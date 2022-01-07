
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;


 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;

__attribute__((used)) static int igbvf_set_tx_csum(struct net_device *netdev, u32 data)
{
 if (data)
  netdev->features |= (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);
 else
  netdev->features &= ~(NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM);
 return 0;
}
