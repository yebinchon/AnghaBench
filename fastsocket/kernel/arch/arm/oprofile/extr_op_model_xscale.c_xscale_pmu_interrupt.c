
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_3__ {int ovf; scalar_t__ reset_counter; } ;


 int CCNT ;
 int IRQ_HANDLED ;
 int MAX_COUNTERS ;
 int PMU_ENABLE ;
 scalar_t__ PMU_XSC1 ;
 int __xsc1_check_ctrs () ;
 int __xsc2_check_ctrs () ;
 int get_irq_regs () ;
 int oprofile_add_sample (int ,int) ;
 TYPE_2__* pmu ;
 int read_pmnc () ;
 TYPE_1__* results ;
 int write_counter (int,int) ;
 int write_pmnc (int) ;

__attribute__((used)) static irqreturn_t xscale_pmu_interrupt(int irq, void *arg)
{
 int i;
 u32 pmnc;

 if (pmu->id == PMU_XSC1)
  __xsc1_check_ctrs();
 else
  __xsc2_check_ctrs();

 for (i = CCNT; i < MAX_COUNTERS; i++) {
  if (!results[i].ovf)
   continue;

  write_counter(i, -(u32)results[i].reset_counter);
  oprofile_add_sample(get_irq_regs(), i);
  results[i].ovf--;
 }

 pmnc = read_pmnc() | PMU_ENABLE;
 write_pmnc(pmnc);

 return IRQ_HANDLED;
}
