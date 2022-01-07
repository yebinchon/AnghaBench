
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int features; } ;
struct igbvf_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int dev_info (int *,char*,char*) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igbvf_set_tso(struct net_device *netdev, u32 data)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);

 if (data) {
  netdev->features |= NETIF_F_TSO;
  netdev->features |= NETIF_F_TSO6;
 } else {
  netdev->features &= ~NETIF_F_TSO;
  netdev->features &= ~NETIF_F_TSO6;
 }

 dev_info(&adapter->pdev->dev, "TSO is %s\n",
          data ? "Enabled" : "Disabled");
 return 0;
}
