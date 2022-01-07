
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct port_info {int rx_offload; } ;
struct net_device {int dummy; } ;


 int RX_CSO ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 get_rx_csum(struct net_device *dev)
{
 struct port_info *p = netdev_priv(dev);

 return p->rx_offload & RX_CSO;
}
