
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct port_info {int rx_offload; } ;
struct net_device {int dummy; } ;


 int RX_CSO ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int set_rx_csum(struct net_device *dev, u32 data)
{
 struct port_info *p = netdev_priv(dev);

 if (data)
  p->rx_offload |= RX_CSO;
 else
  p->rx_offload &= ~RX_CSO;
 return 0;
}
