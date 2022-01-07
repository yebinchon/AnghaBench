
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int features; } ;


 int NETIF_F_RXCSUM ;

__attribute__((used)) static u32 ixgbe_get_rx_csum(struct net_device *netdev)
{
 return netdev->features & NETIF_F_RXCSUM;
}
