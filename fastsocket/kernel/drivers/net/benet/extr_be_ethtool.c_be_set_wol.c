
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct be_adapter {int wol; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 int WAKE_MAGIC ;
 int be_is_wol_supported (struct be_adapter*) ;
 int dev_warn (int *,char*) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
be_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 if (wol->wolopts & ~WAKE_MAGIC)
  return -EOPNOTSUPP;

 if (!be_is_wol_supported(adapter)) {
  dev_warn(&adapter->pdev->dev, "WOL not supported\n");
  return -EOPNOTSUPP;
 }

 if (wol->wolopts & WAKE_MAGIC)
  adapter->wol = 1;
 else
  adapter->wol = 0;

 return 0;
}
