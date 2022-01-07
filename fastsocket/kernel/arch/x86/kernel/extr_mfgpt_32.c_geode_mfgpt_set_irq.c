
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EIO ;
 int MFGPT_CMP1 ;
 int MFGPT_DEFAULT_IRQ ;
 int MFGPT_EVENT_IRQ ;
 int MFGPT_MAX_TIMERS ;
 int MSR_PIC_IRQM_LPC ;
 int MSR_PIC_ZSEL_LOW ;
 scalar_t__ geode_mfgpt_toggle_event (int,int,int ,int) ;
 int rdmsr (int ,int,int) ;
 int wrmsr (int ,int,int) ;

int geode_mfgpt_set_irq(int timer, int cmp, int *irq, int enable)
{
 u32 zsel, lpc, dummy;
 int shift;

 if (timer < 0 || timer >= MFGPT_MAX_TIMERS)
  return -EIO;
 rdmsr(MSR_PIC_ZSEL_LOW, zsel, dummy);
 shift = ((cmp == MFGPT_CMP1 ? 0 : 4) + timer % 4) * 4;
 if (((zsel >> shift) & 0xF) == 2)
  return -EIO;


 if (!*irq)
  *irq = (zsel >> shift) & 0xF;
 if (!*irq)
  *irq = MFGPT_DEFAULT_IRQ;


 if (*irq < 1 || *irq == 2 || *irq > 15)
  return -EIO;
 rdmsr(MSR_PIC_IRQM_LPC, lpc, dummy);
 if (lpc & (1 << *irq))
  return -EIO;


 if (geode_mfgpt_toggle_event(timer, cmp, MFGPT_EVENT_IRQ, enable))
  return -EIO;
 if (enable) {
  zsel = (zsel & ~(0xF << shift)) | (*irq << shift);
  wrmsr(MSR_PIC_ZSEL_LOW, zsel, dummy);
 }

 return 0;
}
