
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; scalar_t__ mc_count; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int RXALL ;
 int RXPBM ;
 int TCR_DEF ;
 int W_TCR ;
 int de620_set_register (struct net_device*,int ,int) ;

__attribute__((used)) static void de620_set_multicast_list(struct net_device *dev)
{
 if (dev->mc_count || dev->flags&(IFF_ALLMULTI|IFF_PROMISC))
 {
  de620_set_register(dev, W_TCR, (TCR_DEF & ~RXPBM) | RXALL);
 }
 else
 {
  de620_set_register(dev, W_TCR, TCR_DEF);
 }
}
