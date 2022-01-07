
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct platform_device {int dev; } ;


 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 int THIS_MODULE ;
 int platform_set_drvdata (struct platform_device*,struct rtc_device*) ;
 int rs5c313_rtc_ops ;
 struct rtc_device* rtc_device_register (char*,int *,int *,int ) ;

__attribute__((used)) static int rs5c313_rtc_probe(struct platform_device *pdev)
{
 struct rtc_device *rtc = rtc_device_register("rs5c313", &pdev->dev,
    &rs5c313_rtc_ops, THIS_MODULE);

 if (IS_ERR(rtc))
  return PTR_ERR(rtc);

 platform_set_drvdata(pdev, rtc);

 return 0;
}
