
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_restore_hw (unsigned long) ;

void ipipe_critical_exit(unsigned long flags)
{
 local_irq_restore_hw(flags);
}
