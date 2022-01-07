
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int interrupt_disabled; int si_timer; int stop_operation; scalar_t__ irq; } ;


 scalar_t__ SI_TIMEOUT_JIFFIES ;
 int atomic_read (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int start_disable_irq (struct smi_info*) ;

__attribute__((used)) static inline void disable_si_irq(struct smi_info *smi_info)
{
 if ((smi_info->irq) && (!smi_info->interrupt_disabled)) {
  start_disable_irq(smi_info);
  smi_info->interrupt_disabled = 1;
  if (!atomic_read(&smi_info->stop_operation))
   mod_timer(&smi_info->si_timer, jiffies + SI_TIMEOUT_JIFFIES);
 }
}
