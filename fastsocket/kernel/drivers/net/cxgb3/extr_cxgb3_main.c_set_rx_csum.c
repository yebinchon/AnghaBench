
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct port_info {int rx_offload; int first_qset; int nqsets; } ;
struct net_device {int dummy; } ;


 int T3_LRO ;
 int T3_RX_CSUM ;
 struct port_info* netdev_priv (struct net_device*) ;
 int set_qset_lro (struct net_device*,int,int ) ;

__attribute__((used)) static int set_rx_csum(struct net_device *dev, u32 data)
{
 struct port_info *p = netdev_priv(dev);

 if (data) {
  p->rx_offload |= T3_RX_CSUM;
 } else {
  int i;

  p->rx_offload &= ~(T3_RX_CSUM | T3_LRO);
  for (i = p->first_qset; i < p->first_qset + p->nqsets; i++)
   set_qset_lro(dev, i, 0);
 }
 return 0;
}
