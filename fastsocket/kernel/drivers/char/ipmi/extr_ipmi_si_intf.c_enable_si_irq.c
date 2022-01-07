
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {scalar_t__ interrupt_disabled; scalar_t__ irq; } ;


 int start_enable_irq (struct smi_info*) ;

__attribute__((used)) static inline void enable_si_irq(struct smi_info *smi_info)
{
 if ((smi_info->irq) && (smi_info->interrupt_disabled)) {
  start_enable_irq(smi_info);
  smi_info->interrupt_disabled = 0;
 }
}
