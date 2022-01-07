
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns83820 {int misc_lock; } ;


 int ns83820_update_stats (struct ns83820*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ns83820_mib_isr(struct ns83820 *dev)
{
 unsigned long flags;
 spin_lock_irqsave(&dev->misc_lock, flags);
 ns83820_update_stats(dev);
 spin_unlock_irqrestore(&dev->misc_lock, flags);
}
