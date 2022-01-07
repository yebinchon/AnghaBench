
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct hp100_private {scalar_t__ whatever_offset; } ;
typedef scalar_t__ dma_addr_t ;


 struct hp100_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline dma_addr_t virt_to_whatever(struct net_device *dev, u32 * ptr)
{
 struct hp100_private *lp = netdev_priv(dev);
 return ((u_long) ptr) + lp->whatever_offset;
}
