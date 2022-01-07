
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct b44 {int lock; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int EINVAL ;
 int MII_BMCR ;
 int b44_readphy (struct b44*,int ,int*) ;
 int b44_writephy (struct b44*,int ,int) ;
 struct b44* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int b44_nway_reset(struct net_device *dev)
{
 struct b44 *bp = netdev_priv(dev);
 u32 bmcr;
 int r;

 spin_lock_irq(&bp->lock);
 b44_readphy(bp, MII_BMCR, &bmcr);
 b44_readphy(bp, MII_BMCR, &bmcr);
 r = -EINVAL;
 if (bmcr & BMCR_ANENABLE) {
  b44_writephy(bp, MII_BMCR,
        bmcr | BMCR_ANRESTART);
  r = 0;
 }
 spin_unlock_irq(&bp->lock);

 return r;
}
