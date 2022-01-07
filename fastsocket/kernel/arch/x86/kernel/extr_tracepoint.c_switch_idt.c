
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int load_current_idt () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void switch_idt(void *arg)
{
 unsigned long flags;

 local_irq_save(flags);
 load_current_idt();
 local_irq_restore(flags);
}
