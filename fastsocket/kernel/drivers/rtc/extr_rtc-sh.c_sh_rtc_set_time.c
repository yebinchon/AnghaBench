
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_rtc {int capabilities; int lock; scalar_t__ regbase; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ RCR2 ;
 unsigned int RCR2_RESET ;
 unsigned int RCR2_RTCEN ;
 unsigned int RCR2_START ;
 scalar_t__ RDAYCNT ;
 scalar_t__ RHRCNT ;
 scalar_t__ RMINCNT ;
 scalar_t__ RMONCNT ;
 scalar_t__ RSECCNT ;
 int RTC_CAP_4_DIGIT_YEAR ;
 scalar_t__ RWKCNT ;
 scalar_t__ RYRCNT ;
 unsigned int bin2bcd (int) ;
 struct sh_rtc* platform_get_drvdata (struct platform_device*) ;
 unsigned int readb (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct platform_device* to_platform_device (struct device*) ;
 int writeb (unsigned int,scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int sh_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct sh_rtc *rtc = platform_get_drvdata(pdev);
 unsigned int tmp;
 int year;

 spin_lock_irq(&rtc->lock);


 tmp = readb(rtc->regbase + RCR2);
 tmp |= RCR2_RESET;
 tmp &= ~RCR2_START;
 writeb(tmp, rtc->regbase + RCR2);

 writeb(bin2bcd(tm->tm_sec), rtc->regbase + RSECCNT);
 writeb(bin2bcd(tm->tm_min), rtc->regbase + RMINCNT);
 writeb(bin2bcd(tm->tm_hour), rtc->regbase + RHRCNT);
 writeb(bin2bcd(tm->tm_wday), rtc->regbase + RWKCNT);
 writeb(bin2bcd(tm->tm_mday), rtc->regbase + RDAYCNT);
 writeb(bin2bcd(tm->tm_mon + 1), rtc->regbase + RMONCNT);

 if (rtc->capabilities & RTC_CAP_4_DIGIT_YEAR) {
  year = (bin2bcd((tm->tm_year + 1900) / 100) << 8) |
   bin2bcd(tm->tm_year % 100);
  writew(year, rtc->regbase + RYRCNT);
 } else {
  year = tm->tm_year % 100;
  writeb(bin2bcd(year), rtc->regbase + RYRCNT);
 }


 tmp = readb(rtc->regbase + RCR2);
 tmp &= ~RCR2_RESET;
 tmp |= RCR2_RTCEN | RCR2_START;
 writeb(tmp, rtc->regbase + RCR2);

 spin_unlock_irq(&rtc->lock);

 return 0;
}
