
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_restore (unsigned long) ;
 int local_save_flags (unsigned long) ;

void
arch_enable_nmi(void)
{
 unsigned long flags;

 local_save_flags(flags);
 flags |= (1 << 30);
 local_irq_restore(flags);
}
