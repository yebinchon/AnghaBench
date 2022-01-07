
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phy_interface_t ;


 int PHY_INTERFACE_MODE_GMII ;
 int PHY_INTERFACE_MODE_MII ;
 int PHY_INTERFACE_MODE_RGMII ;
 int PHY_INTERFACE_MODE_RGMII_ID ;
 int PHY_INTERFACE_MODE_RGMII_RXID ;
 int PHY_INTERFACE_MODE_RGMII_TXID ;
 int PHY_INTERFACE_MODE_RMII ;
 int PHY_INTERFACE_MODE_RTBI ;
 int PHY_INTERFACE_MODE_SGMII ;
 int PHY_INTERFACE_MODE_TBI ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static phy_interface_t to_phy_interface(const char *phy_connection_type)
{
 if (strcasecmp(phy_connection_type, "mii") == 0)
  return PHY_INTERFACE_MODE_MII;
 if (strcasecmp(phy_connection_type, "gmii") == 0)
  return PHY_INTERFACE_MODE_GMII;
 if (strcasecmp(phy_connection_type, "tbi") == 0)
  return PHY_INTERFACE_MODE_TBI;
 if (strcasecmp(phy_connection_type, "rmii") == 0)
  return PHY_INTERFACE_MODE_RMII;
 if (strcasecmp(phy_connection_type, "rgmii") == 0)
  return PHY_INTERFACE_MODE_RGMII;
 if (strcasecmp(phy_connection_type, "rgmii-id") == 0)
  return PHY_INTERFACE_MODE_RGMII_ID;
 if (strcasecmp(phy_connection_type, "rgmii-txid") == 0)
  return PHY_INTERFACE_MODE_RGMII_TXID;
 if (strcasecmp(phy_connection_type, "rgmii-rxid") == 0)
  return PHY_INTERFACE_MODE_RGMII_RXID;
 if (strcasecmp(phy_connection_type, "rtbi") == 0)
  return PHY_INTERFACE_MODE_RTBI;
 if (strcasecmp(phy_connection_type, "sgmii") == 0)
  return PHY_INTERFACE_MODE_SGMII;

 return PHY_INTERFACE_MODE_MII;
}
