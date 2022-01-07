
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int features; } ;


 int NETIF_F_HW_CSUM ;

__attribute__((used)) static u32 atl1c_get_tx_csum(struct net_device *netdev)
{
 return (netdev->features & NETIF_F_HW_CSUM) != 0;
}
