
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int IRQF_DISABLED ;
 int dev_err (struct device*,char*,int ,int) ;
 int free_irq (int ,struct rtc_device*) ;
 struct rtc_device* platform_get_drvdata (struct platform_device*) ;
 int request_irq (int ,int ,int ,char*,struct rtc_device*) ;
 int s3c_rtc_alarmirq ;
 int s3c_rtc_alarmno ;
 int s3c_rtc_tickirq ;
 int s3c_rtc_tickno ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int s3c_rtc_open(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct rtc_device *rtc_dev = platform_get_drvdata(pdev);
 int ret;

 ret = request_irq(s3c_rtc_alarmno, s3c_rtc_alarmirq,
     IRQF_DISABLED, "s3c2410-rtc alarm", rtc_dev);

 if (ret) {
  dev_err(dev, "IRQ%d error %d\n", s3c_rtc_alarmno, ret);
  return ret;
 }

 ret = request_irq(s3c_rtc_tickno, s3c_rtc_tickirq,
     IRQF_DISABLED, "s3c2410-rtc tick", rtc_dev);

 if (ret) {
  dev_err(dev, "IRQ%d error %d\n", s3c_rtc_tickno, ret);
  goto tick_err;
 }

 return ret;

 tick_err:
 free_irq(s3c_rtc_alarmno, rtc_dev);
 return ret;
}
