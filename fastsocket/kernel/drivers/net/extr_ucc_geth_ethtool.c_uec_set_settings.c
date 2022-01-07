
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucc_geth_private {struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 int ENODEV ;
 struct ucc_geth_private* netdev_priv (struct net_device*) ;
 int phy_ethtool_sset (struct phy_device*,struct ethtool_cmd*) ;

__attribute__((used)) static int
uec_set_settings(struct net_device *netdev, struct ethtool_cmd *ecmd)
{
 struct ucc_geth_private *ugeth = netdev_priv(netdev);
 struct phy_device *phydev = ugeth->phydev;

 if (!phydev)
  return -ENODEV;

 return phy_ethtool_sset(phydev, ecmd);
}
