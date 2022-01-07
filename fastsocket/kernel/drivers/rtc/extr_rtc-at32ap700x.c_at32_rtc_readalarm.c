
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int enabled; int pending; int time; } ;
struct rtc_at32ap700x {int lock; int alarm_time; } ;
struct device {int dummy; } ;


 int IMR ;
 int IMR_TOPI ;
 int ISR ;
 int ISR_TOPI ;
 int RTC_BIT (int ) ;
 struct rtc_at32ap700x* dev_get_drvdata (struct device*) ;
 int rtc_readl (struct rtc_at32ap700x*,int ) ;
 int rtc_time_to_tm (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int at32_rtc_readalarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct rtc_at32ap700x *rtc = dev_get_drvdata(dev);

 spin_lock_irq(&rtc->lock);
 rtc_time_to_tm(rtc->alarm_time, &alrm->time);
 alrm->enabled = rtc_readl(rtc, IMR) & RTC_BIT(IMR_TOPI) ? 1 : 0;
 alrm->pending = rtc_readl(rtc, ISR) & RTC_BIT(ISR_TOPI) ? 1 : 0;
 spin_unlock_irq(&rtc->lock);

 return 0;
}
