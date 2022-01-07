
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sn_irq_info {int irq_irq; int irq_cpuid; } ;
struct TYPE_2__ {int sn_last_irq; int sn_first_irq; } ;


 TYPE_1__* pdacpu (int) ;

__attribute__((used)) static void register_intr_pda(struct sn_irq_info *sn_irq_info)
{
 int irq = sn_irq_info->irq_irq;
 int cpu = sn_irq_info->irq_cpuid;

 if (pdacpu(cpu)->sn_last_irq < irq) {
  pdacpu(cpu)->sn_last_irq = irq;
 }

 if (pdacpu(cpu)->sn_first_irq == 0 || pdacpu(cpu)->sn_first_irq > irq)
  pdacpu(cpu)->sn_first_irq = irq;
}
