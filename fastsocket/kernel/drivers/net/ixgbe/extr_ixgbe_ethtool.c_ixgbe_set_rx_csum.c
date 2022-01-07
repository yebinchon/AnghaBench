
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int features; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags2; TYPE_1__ hw; } ;


 int IXGBE_FLAG2_RSC_CAPABLE ;
 int IXGBE_FLAG2_RSC_ENABLED ;
 int NETIF_F_LRO ;
 int NETIF_F_RXCSUM ;
 int ixgbe_do_reset (struct net_device*) ;


 int ixgbe_set_rsc (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_set_rx_csum(struct net_device *netdev, u32 data)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 bool need_reset = 0;

 if (data) {
  netdev->features |= NETIF_F_RXCSUM;
 } else {
  netdev->features &= ~NETIF_F_RXCSUM;

  if (adapter->flags2 & IXGBE_FLAG2_RSC_CAPABLE) {
   adapter->flags2 &= ~IXGBE_FLAG2_RSC_ENABLED;
   netdev->features &= ~NETIF_F_LRO;
  }

  switch (adapter->hw.mac.type) {
  case 128:
   ixgbe_set_rsc(adapter);
   break;
  case 129:
   need_reset = 1;
   break;
  default:
   break;
  }
 }

 if (need_reset)
  ixgbe_do_reset(netdev);

 return 0;
}
