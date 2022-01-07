
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct pt_regs {int dummy; } ;
typedef int irqreturn_t ;


 unsigned int CCNT ;
 int CPU_COUNTER (int ,unsigned int) ;
 int IRQ_HANDLED ;
 unsigned int PMCR_IEN_PMN0 ;
 unsigned int PMCR_OFL_PMN0 ;
 unsigned int PMN0 ;
 unsigned int arm11_read_pmnc () ;
 int arm11_reset_counter (unsigned int) ;
 int arm11_write_pmnc (unsigned int) ;
 struct pt_regs* get_irq_regs () ;
 int oprofile_add_sample (struct pt_regs*,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static irqreturn_t arm11_pmu_interrupt(int irq, void *arg)
{
 struct pt_regs *regs = get_irq_regs();
 unsigned int cnt;
 u32 pmnc;

 pmnc = arm11_read_pmnc();

 for (cnt = PMN0; cnt <= CCNT; cnt++) {
  if ((pmnc & (PMCR_OFL_PMN0 << cnt)) && (pmnc & (PMCR_IEN_PMN0 << cnt))) {
   arm11_reset_counter(cnt);
   oprofile_add_sample(regs, CPU_COUNTER(smp_processor_id(), cnt));
  }
 }

 arm11_write_pmnc(pmnc);
 return IRQ_HANDLED;
}
