
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_plat_data {scalar_t__ irq; int irqen; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int ENOIOCTLCMD ;
 int RTC_AF ;


 struct rtc_plat_data* platform_get_drvdata (struct platform_device*) ;
 int stk17ta8_rtc_update_alarm (struct rtc_plat_data*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int stk17ta8_rtc_ioctl(struct device *dev, unsigned int cmd,
       unsigned long arg)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct rtc_plat_data *pdata = platform_get_drvdata(pdev);

 if (pdata->irq <= 0)
  return -ENOIOCTLCMD;
 switch (cmd) {
 case 129:
  pdata->irqen &= ~RTC_AF;
  stk17ta8_rtc_update_alarm(pdata);
  break;
 case 128:
  pdata->irqen |= RTC_AF;
  stk17ta8_rtc_update_alarm(pdata);
  break;
 default:
  return -ENOIOCTLCMD;
 }
 return 0;
}
