
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skge_port {int rx_csum; } ;
struct net_device {int dummy; } ;


 struct skge_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 skge_get_rx_csum(struct net_device *dev)
{
 struct skge_port *skge = netdev_priv(dev);

 return skge->rx_csum;
}
