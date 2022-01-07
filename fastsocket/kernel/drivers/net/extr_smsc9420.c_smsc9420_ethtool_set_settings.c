
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc9420_pdata {int phy_dev; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 int ENODEV ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 int phy_ethtool_sset (int ,struct ethtool_cmd*) ;

__attribute__((used)) static int smsc9420_ethtool_set_settings(struct net_device *dev,
      struct ethtool_cmd *cmd)
{
 struct smsc9420_pdata *pd = netdev_priv(dev);

 if (!pd->phy_dev)
  return -ENODEV;

 return phy_ethtool_sset(pd->phy_dev, cmd);
}
