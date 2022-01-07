
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct hpet_dev {int irq; int cpu; } ;
struct clock_event_device {int mult; int shift; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 struct hpet_dev* EVT_TO_HPET_DEV (struct clock_event_device*) ;
 int HPET_COUNTER ;
 unsigned long HPET_TN_32BIT ;
 unsigned long HPET_TN_ENABLE ;
 unsigned long HPET_TN_LEVEL ;
 unsigned long HPET_TN_PERIODIC ;
 unsigned long HPET_TN_SETVAL ;
 int HPET_Tn_CFG (int) ;
 int HPET_Tn_CMP (int) ;
 int HZ ;
 int NSEC_PER_SEC ;
 int cpumask_of (int ) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int hpet_enable_legacy_int () ;
 int hpet_print_config () ;
 unsigned long hpet_readl (int ) ;
 int hpet_setup_msi_irq (int ) ;
 int hpet_start_counter () ;
 int hpet_stop_counter () ;
 int hpet_writel (unsigned long,int ) ;
 int irq_set_affinity (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void hpet_set_mode(enum clock_event_mode mode,
     struct clock_event_device *evt, int timer)
{
 unsigned long cfg, cmp, now;
 uint64_t delta;

 switch (mode) {
 case 131:
  hpet_stop_counter();
  delta = ((uint64_t)(NSEC_PER_SEC/HZ)) * evt->mult;
  delta >>= evt->shift;
  now = hpet_readl(HPET_COUNTER);
  cmp = now + (unsigned long) delta;
  cfg = hpet_readl(HPET_Tn_CFG(timer));

  cfg &= ~HPET_TN_LEVEL;
  cfg |= HPET_TN_ENABLE | HPET_TN_PERIODIC |
         HPET_TN_SETVAL | HPET_TN_32BIT;
  hpet_writel(cfg, HPET_Tn_CFG(timer));
  hpet_writel(cmp, HPET_Tn_CMP(timer));
  udelay(1);







  hpet_writel((unsigned long) delta, HPET_Tn_CMP(timer));
  hpet_start_counter();
  hpet_print_config();
  break;

 case 132:
  cfg = hpet_readl(HPET_Tn_CFG(timer));
  cfg &= ~HPET_TN_PERIODIC;
  cfg |= HPET_TN_ENABLE | HPET_TN_32BIT;
  hpet_writel(cfg, HPET_Tn_CFG(timer));
  break;

 case 128:
 case 129:
  cfg = hpet_readl(HPET_Tn_CFG(timer));
  cfg &= ~HPET_TN_ENABLE;
  hpet_writel(cfg, HPET_Tn_CFG(timer));
  break;

 case 130:
  if (timer == 0) {
   hpet_enable_legacy_int();
  } else {
   struct hpet_dev *hdev = EVT_TO_HPET_DEV(evt);
   hpet_setup_msi_irq(hdev->irq);
   disable_irq(hdev->irq);
   irq_set_affinity(hdev->irq, cpumask_of(hdev->cpu));
   enable_irq(hdev->irq);
  }
  hpet_print_config();
  break;
 }
}
