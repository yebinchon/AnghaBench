
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct platform_device {int dummy; } ;


 struct rtc_device* platform_get_drvdata (struct platform_device*) ;
 int rtc_device_unregister (struct rtc_device*) ;

__attribute__((used)) static int sa1100_rtc_remove(struct platform_device *pdev)
{
 struct rtc_device *rtc = platform_get_drvdata(pdev);

  if (rtc)
  rtc_device_unregister(rtc);

 return 0;
}
