
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct ixgbe_adapter {int flags2; struct net_device* netdev; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;


 int IXGBE_FLAG2_RSC_CAPABLE ;
 int IXGBE_FLAG2_RSC_ENABLED ;
 int IXGBE_MIN_RSC_ITR ;
 int NETIF_F_LRO ;
 int e_info (int ,char*,...) ;
 int probe ;

__attribute__((used)) static bool ixgbe_update_rsc(struct ixgbe_adapter *adapter,
        struct ethtool_coalesce *ec)
{
 struct net_device *netdev = adapter->netdev;

 if (!(adapter->flags2 & IXGBE_FLAG2_RSC_CAPABLE))
  return 0;


 if (ec->rx_coalesce_usecs != 1 &&
     ec->rx_coalesce_usecs <= (IXGBE_MIN_RSC_ITR >> 2)) {
  if (adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED) {
   e_info(probe, "rx-usecs set too low, disabling RSC\n");
   adapter->flags2 &= ~IXGBE_FLAG2_RSC_ENABLED;
   return 1;
  }
 } else {

  if ((netdev->features & NETIF_F_LRO) &&
      !(adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED)) {
   e_info(probe, "rx-usecs set to %d, re-enabling RSC\n",
          ec->rx_coalesce_usecs);
   adapter->flags2 |= IXGBE_FLAG2_RSC_ENABLED;
   return 1;
  }
 }
 return 0;
}
