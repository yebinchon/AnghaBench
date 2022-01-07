
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_save_hw (unsigned long) ;

unsigned long ipipe_critical_enter(void (*syncfn) (void))
{
 unsigned long flags;

 local_irq_save_hw(flags);

 return flags;
}
