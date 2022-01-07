
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;


 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;

__attribute__((used)) static int ixgbe_set_tso(struct net_device *netdev, u32 data)
{
 if (data) {
  netdev->features |= NETIF_F_TSO;
  netdev->features |= NETIF_F_TSO6;
 } else {
  netdev->features &= ~NETIF_F_TSO;
  netdev->features &= ~NETIF_F_TSO6;
 }
 return 0;
}
