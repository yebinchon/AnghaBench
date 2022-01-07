
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;


 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;

__attribute__((used)) static int ixgbevf_set_tso(struct net_device *netdev, u32 data)
{
 if (data) {
  netdev->features |= NETIF_F_TSO;
  netdev->features |= NETIF_F_TSO6;
 } else {
  netif_tx_stop_all_queues(netdev);
  netdev->features &= ~NETIF_F_TSO;
  netdev->features &= ~NETIF_F_TSO6;
  netif_tx_start_all_queues(netdev);
 }
 return 0;
}
