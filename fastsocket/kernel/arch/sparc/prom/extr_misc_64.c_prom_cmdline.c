
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_INOUT (int ,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int p1275_cmd (char*,int ) ;
 int smp_capture () ;
 int smp_release () ;

void prom_cmdline(void)
{
 unsigned long flags;

 local_irq_save(flags);





 p1275_cmd("enter", P1275_INOUT(0, 0));





 local_irq_restore(flags);
}
