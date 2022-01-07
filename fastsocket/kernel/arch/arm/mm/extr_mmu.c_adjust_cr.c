
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CR_A ;
 unsigned long cr_alignment ;
 unsigned long cr_no_alignment ;
 unsigned long get_cr () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int set_cr (unsigned long) ;

void adjust_cr(unsigned long mask, unsigned long set)
{
 unsigned long flags;

 mask &= ~CR_A;

 set &= mask;

 local_irq_save(flags);

 cr_no_alignment = (cr_no_alignment & ~mask) | set;
 cr_alignment = (cr_alignment & ~mask) | set;

 set_cr((get_cr() & ~mask) | set);

 local_irq_restore(flags);
}
