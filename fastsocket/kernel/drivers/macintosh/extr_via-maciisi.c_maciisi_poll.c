
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADB_DELAY ;
 size_t IFR ;
 int SR_INT ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int maciisi_interrupt (int ,int *) ;
 int udelay (int ) ;
 int* via ;

void
maciisi_poll(void)
{
 unsigned long flags;

 local_irq_save(flags);
 if (via[IFR] & SR_INT) {
  maciisi_interrupt(0, ((void*)0));
 }
 else
  udelay(ADB_DELAY);

 local_irq_restore(flags);
}
