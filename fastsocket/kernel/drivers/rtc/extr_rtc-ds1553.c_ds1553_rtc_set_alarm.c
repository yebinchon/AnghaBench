
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tm_sec; int tm_min; int tm_hour; int tm_mday; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct rtc_plat_data {scalar_t__ irq; int irqen; int alrm_sec; int alrm_min; int alrm_hour; int alrm_mday; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int RTC_AF ;
 int ds1553_rtc_update_alarm (struct rtc_plat_data*) ;
 struct rtc_plat_data* platform_get_drvdata (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int ds1553_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct rtc_plat_data *pdata = platform_get_drvdata(pdev);

 if (pdata->irq <= 0)
  return -EINVAL;
 pdata->alrm_mday = alrm->time.tm_mday;
 pdata->alrm_hour = alrm->time.tm_hour;
 pdata->alrm_min = alrm->time.tm_min;
 pdata->alrm_sec = alrm->time.tm_sec;
 if (alrm->enabled)
  pdata->irqen |= RTC_AF;
 ds1553_rtc_update_alarm(pdata);
 return 0;
}
