<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript">
    function GetCityNameArray() {
        var cities = ['Mumbai', 'Delhi', 'Chennai'];
        PageMethods.GetCityNameArray(cities, OnSuccessGetCityNameArray);
    }
    function OnSuccessGetCityNameArray(response) {        
        for (var i in response) {
            alert(response[i]);
        }
    }
    </script>
    <script type="text/javascript">
    function GetCityObjectArray() {
        var cities = new Array();
        var city = {};
        city.Name = "Mumbai";
        city.Population = 2000;
        cities[0] = city;
        city = {};
        city.Name = "Delhi";
        city.Population = 1000;
        cities[1] = city;
        city = {};
        city.Name = "Chennai";
        city.Population = 3000;
        cities[2] = city;
        PageMethods.CityObjectArray(cities, OnSuccessCityObjectArray);
    }
    function OnSuccessCityObjectArray(response) {
        for (var i in response) {
            alert(response[i].Name + " " + response[i].Population);
        }
    }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
    </asp:ScriptManager>
    <div>
        <input type="button" onclick="GetCityNameArray()" value="Get City Name Array" />
        <input type="button" onclick="GetCityObjectArray()" value="Get Cities Object Array" />
    </div>
    </form>
</body>
</html>
