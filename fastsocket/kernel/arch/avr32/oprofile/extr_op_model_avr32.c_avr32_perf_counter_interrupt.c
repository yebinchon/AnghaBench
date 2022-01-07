
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;
struct avr32_perf_counter {int flag_mask; int count; scalar_t__ enabled; } ;
typedef int irqreturn_t ;


 int AVR32_PERFCTR_IRQ_GROUP ;
 int AVR32_PERFCTR_IRQ_LINE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PCCNT ;
 int PCCR ;
 int PCNT0 ;
 int PCNT1 ;
 struct pt_regs* get_irq_regs () ;
 int intc_get_pending (int ) ;
 scalar_t__ likely (int) ;
 int oprofile_add_sample (struct pt_regs*,int ) ;
 int sysreg_read (int ) ;
 int sysreg_write (int ,int) ;

__attribute__((used)) static irqreturn_t avr32_perf_counter_interrupt(int irq, void *dev_id)
{
 struct avr32_perf_counter *ctr = dev_id;
 struct pt_regs *regs;
 u32 pccr;

 if (likely(!(intc_get_pending(AVR32_PERFCTR_IRQ_GROUP)
     & (1 << AVR32_PERFCTR_IRQ_LINE))))
  return IRQ_NONE;

 regs = get_irq_regs();
 pccr = sysreg_read(PCCR);


 sysreg_write(PCCR, pccr);


 if (ctr->enabled && (pccr & ctr->flag_mask)) {
  sysreg_write(PCCNT, -ctr->count);
  oprofile_add_sample(regs, PCCNT);
 }
 ctr++;

 if (ctr->enabled && (pccr & ctr->flag_mask)) {
  sysreg_write(PCNT0, -ctr->count);
  oprofile_add_sample(regs, PCNT0);
 }
 ctr++;

 if (ctr->enabled && (pccr & ctr->flag_mask)) {
  sysreg_write(PCNT1, -ctr->count);
  oprofile_add_sample(regs, PCNT1);
 }

 return IRQ_HANDLED;
}
