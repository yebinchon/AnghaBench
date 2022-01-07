
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CB1_INT ;
 size_t IFR ;
 int IRQ_MAC_ADB_CL ;
 int IRQ_MAC_ADB_SR ;
 int SR_INT ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pmu_interrupt (int ,int *) ;
 int* via1 ;

void
pmu_poll(void)
{
 unsigned long flags;

 local_irq_save(flags);
 if (via1[IFR] & SR_INT) {
  via1[IFR] = SR_INT;
  pmu_interrupt(IRQ_MAC_ADB_SR, ((void*)0));
 }
 if (via1[IFR] & CB1_INT) {
  via1[IFR] = CB1_INT;
  pmu_interrupt(IRQ_MAC_ADB_CL, ((void*)0));
 }
 local_irq_restore(flags);
}
