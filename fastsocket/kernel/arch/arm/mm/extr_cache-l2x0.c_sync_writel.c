
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ l2x0_base ;
 int l2x0_lock ;
 unsigned long readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void sync_writel(unsigned long val, unsigned long reg,
          unsigned long complete_mask)
{
 unsigned long flags;

 spin_lock_irqsave(&l2x0_lock, flags);
 writel(val, l2x0_base + reg);

 while (readl(l2x0_base + reg) & complete_mask)
  ;
 spin_unlock_irqrestore(&l2x0_lock, flags);
}
