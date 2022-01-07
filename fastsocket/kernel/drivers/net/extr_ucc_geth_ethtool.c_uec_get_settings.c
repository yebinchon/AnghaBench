
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucc_geth_private {struct ucc_geth_info* ug_info; struct phy_device* phydev; } ;
struct ucc_geth_info {int * interruptcoalescingmaxvalue; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int maxtxpkt; int maxrxpkt; } ;


 int ENODEV ;
 struct ucc_geth_private* netdev_priv (struct net_device*) ;
 int phy_ethtool_gset (struct phy_device*,struct ethtool_cmd*) ;

__attribute__((used)) static int
uec_get_settings(struct net_device *netdev, struct ethtool_cmd *ecmd)
{
 struct ucc_geth_private *ugeth = netdev_priv(netdev);
 struct phy_device *phydev = ugeth->phydev;
 struct ucc_geth_info *ug_info = ugeth->ug_info;

 if (!phydev)
  return -ENODEV;

 ecmd->maxtxpkt = 1;
 ecmd->maxrxpkt = ug_info->interruptcoalescingmaxvalue[0];

 return phy_ethtool_gset(phydev, ecmd);
}
