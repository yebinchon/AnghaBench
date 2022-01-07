
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips_irq_lock ;
 int mips_pcibios_iack () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int get_int(void)
{
 unsigned long flags;
 int irq;
 spin_lock_irqsave(&mips_irq_lock, flags);

 irq = mips_pcibios_iack();







 spin_unlock_irqrestore(&mips_irq_lock, flags);

 return irq;
}
