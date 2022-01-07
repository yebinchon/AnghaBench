
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct platform_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTCINTREG ;
 int RTCL1HREG ;
 int RTCL1LREG ;
 int RTCLONG1_INT ;
 int RTC_PF ;
 unsigned long periodic_count ;
 struct rtc_device* platform_get_drvdata (struct platform_device*) ;
 int rtc1_write (int ,unsigned long) ;
 int rtc2_write (int ,int ) ;
 int rtc_update_irq (struct rtc_device*,int,int ) ;

__attribute__((used)) static irqreturn_t rtclong1_interrupt(int irq, void *dev_id)
{
 struct platform_device *pdev = (struct platform_device *)dev_id;
 struct rtc_device *rtc = platform_get_drvdata(pdev);
 unsigned long count = periodic_count;

 rtc2_write(RTCINTREG, RTCLONG1_INT);

 rtc1_write(RTCL1LREG, count);
 rtc1_write(RTCL1HREG, count >> 16);

 rtc_update_irq(rtc, 1, RTC_PF);

 return IRQ_HANDLED;
}
