
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc9420_pdata {int phy_dev; } ;
struct net_device {int dummy; } ;


 int ENODEV ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 int phy_start_aneg (int ) ;

__attribute__((used)) static int smsc9420_ethtool_nway_reset(struct net_device *netdev)
{
 struct smsc9420_pdata *pd = netdev_priv(netdev);

 if (!pd->phy_dev)
  return -ENODEV;

 return phy_start_aneg(pd->phy_dev);
}
