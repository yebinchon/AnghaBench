
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bigmac {int sw_bmsr; int lock; int tregs; } ;


 int BIGMAC_BMSR ;
 int BMSR_LSTATUS ;
 int bigmac_tcvr_read (struct bigmac*,int ,int ) ;
 struct bigmac* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static u32 bigmac_get_link(struct net_device *dev)
{
 struct bigmac *bp = netdev_priv(dev);

 spin_lock_irq(&bp->lock);
 bp->sw_bmsr = bigmac_tcvr_read(bp, bp->tregs, BIGMAC_BMSR);
 spin_unlock_irq(&bp->lock);

 return (bp->sw_bmsr & BMSR_LSTATUS);
}
