
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int free_irq (int ,struct rtc_device*) ;
 struct rtc_device* platform_get_drvdata (struct platform_device*) ;
 int s3c_rtc_alarmno ;
 int s3c_rtc_setpie (struct device*,int ) ;
 int s3c_rtc_tickno ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static void s3c_rtc_release(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct rtc_device *rtc_dev = platform_get_drvdata(pdev);



 s3c_rtc_setpie(dev, 0);
 free_irq(s3c_rtc_alarmno, rtc_dev);
 free_irq(s3c_rtc_tickno, rtc_dev);
}
