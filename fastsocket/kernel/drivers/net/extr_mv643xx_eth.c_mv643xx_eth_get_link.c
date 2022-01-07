
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static u32 mv643xx_eth_get_link(struct net_device *dev)
{
 return !!netif_carrier_ok(dev);
}
