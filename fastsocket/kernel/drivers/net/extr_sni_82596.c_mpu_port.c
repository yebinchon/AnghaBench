
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct i596_private {int options; int mpu_port; } ;
typedef scalar_t__ dma_addr_t ;


 int OPT_MPU_16BIT ;
 struct i596_private* netdev_priv (struct net_device*) ;
 int udelay (int) ;
 int wmb () ;
 int writel (int,int ) ;
 int writew (int,int ) ;

__attribute__((used)) static void mpu_port(struct net_device *dev, int c, dma_addr_t x)
{
 struct i596_private *lp = netdev_priv(dev);

 u32 v = (u32) (c) | (u32) (x);

 if (lp->options & OPT_MPU_16BIT) {
  writew(v & 0xffff, lp->mpu_port);
  wmb();
  udelay(1);
  writew(v >> 16, lp->mpu_port);
 } else {
  writel(v, lp->mpu_port);
  wmb();
  udelay(1);
  writel(v, lp->mpu_port);
 }
}
