
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b44 {int timer; int lock; } ;


 scalar_t__ HZ ;
 int b44_check_phy (struct b44*) ;
 int b44_stats_update (struct b44*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void b44_timer(unsigned long __opaque)
{
 struct b44 *bp = (struct b44 *) __opaque;

 spin_lock_irq(&bp->lock);

 b44_check_phy(bp);

 b44_stats_update(bp);

 spin_unlock_irq(&bp->lock);

 mod_timer(&bp->timer, round_jiffies(jiffies + HZ));
}
