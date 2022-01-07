
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct pt_regs {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int cnt1_enabled; int cnt2_enabled; int reset_counter1; int reset_counter2; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LOONGSON2_PERFCNT_OVERFLOW ;
 struct pt_regs* get_irq_regs () ;
 int oprofile_add_sample (struct pt_regs*,int) ;
 int read_c0_perfcnt () ;
 TYPE_1__ reg ;
 int sample_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_c0_perfcnt (int) ;

__attribute__((used)) static irqreturn_t loongson2_perfcount_handler(int irq, void *dev_id)
{
 uint64_t counter, counter1, counter2;
 struct pt_regs *regs = get_irq_regs();
 int enabled;
 unsigned long flags;
 enabled = reg.cnt1_enabled | reg.cnt2_enabled;
 if (!enabled)
  return IRQ_NONE;

 counter = read_c0_perfcnt();
 counter1 = counter & 0xffffffff;
 counter2 = counter >> 32;

 spin_lock_irqsave(&sample_lock, flags);

 if (counter1 & LOONGSON2_PERFCNT_OVERFLOW) {
  if (reg.cnt1_enabled)
   oprofile_add_sample(regs, 0);
  counter1 = reg.reset_counter1;
 }
 if (counter2 & LOONGSON2_PERFCNT_OVERFLOW) {
  if (reg.cnt2_enabled)
   oprofile_add_sample(regs, 1);
  counter2 = reg.reset_counter2;
 }

 spin_unlock_irqrestore(&sample_lock, flags);

 write_c0_perfcnt((counter2 << 32) | counter1);

 return IRQ_HANDLED;
}
