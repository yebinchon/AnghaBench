
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;
typedef int irqreturn_t ;


 unsigned int CCNT ;
 unsigned int CNT0 ;
 unsigned int CNTMAX ;
 int CPU_COUNTER (int ,unsigned int) ;
 int FLAG_C ;
 int IRQ_HANDLED ;
 int armv7_pmnc_getreset_flags () ;
 int armv7_pmnc_reset_counter (unsigned int) ;
 int armv7_start_pmnc () ;
 int armv7_stop_pmnc () ;
 struct pt_regs* get_irq_regs () ;
 int oprofile_add_sample (struct pt_regs*,int) ;
 int smp_processor_id () ;

__attribute__((used)) static irqreturn_t armv7_pmnc_interrupt(int irq, void *arg)
{
 struct pt_regs *regs = get_irq_regs();
 unsigned int cnt;
 u32 flags;





 armv7_stop_pmnc();




 flags = armv7_pmnc_getreset_flags();




 if (flags & FLAG_C) {
  u32 cpu_cnt = CPU_COUNTER(smp_processor_id(), CCNT);
  armv7_pmnc_reset_counter(CCNT);
  oprofile_add_sample(regs, cpu_cnt);
 }




 for (cnt = CNT0; cnt < CNTMAX; cnt++) {
  if (flags & (1 << (cnt - CNT0))) {
   u32 cpu_cnt = CPU_COUNTER(smp_processor_id(), cnt);
   armv7_pmnc_reset_counter(cnt);
   oprofile_add_sample(regs, cpu_cnt);
  }
 }




 armv7_start_pmnc();

 return IRQ_HANDLED;
}
