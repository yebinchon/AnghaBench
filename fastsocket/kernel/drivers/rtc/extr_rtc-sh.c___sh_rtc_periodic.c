
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_rtc {int periodic_freq; struct rtc_device* rtc_dev; scalar_t__ regbase; } ;
struct rtc_task {int private_data; int (* func ) (int ) ;} ;
struct rtc_device {int irq_task_lock; struct rtc_task* irq_task; } ;


 int PF_COUNT ;
 int PF_HP ;
 int PF_KOU ;
 scalar_t__ RCR2 ;
 unsigned int RCR2_PEF ;
 int RTC_IRQF ;
 int RTC_PF ;
 unsigned int readb (scalar_t__) ;
 int rtc_update_irq (struct rtc_device*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static int __sh_rtc_periodic(struct sh_rtc *rtc)
{
 struct rtc_device *rtc_dev = rtc->rtc_dev;
 struct rtc_task *irq_task;
 unsigned int tmp, pending;

 tmp = readb(rtc->regbase + RCR2);
 pending = tmp & RCR2_PEF;
 tmp &= ~RCR2_PEF;
 writeb(tmp, rtc->regbase + RCR2);

 if (!pending)
  return 0;


 if ((rtc->periodic_freq & PF_HP) && (rtc->periodic_freq & PF_COUNT))
  rtc->periodic_freq &= ~PF_COUNT;
 else {
  if (rtc->periodic_freq & PF_HP)
   rtc->periodic_freq |= PF_COUNT;
  if (rtc->periodic_freq & PF_KOU) {
   spin_lock(&rtc_dev->irq_task_lock);
   irq_task = rtc_dev->irq_task;
   if (irq_task)
    irq_task->func(irq_task->private_data);
   spin_unlock(&rtc_dev->irq_task_lock);
  } else
   rtc_update_irq(rtc->rtc_dev, 1, RTC_PF | RTC_IRQF);
 }

 return pending;
}
