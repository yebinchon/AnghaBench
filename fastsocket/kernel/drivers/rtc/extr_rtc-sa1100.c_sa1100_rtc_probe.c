
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct platform_device {int dev; int name; } ;


 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 scalar_t__ RCNR ;
 scalar_t__ RTC_DEF_DIVIDER ;
 int RTC_DEF_TRIM ;
 scalar_t__ RTTR ;
 int THIS_MODULE ;
 int dev_warn (int *,char*) ;
 int device_init_wakeup (int *,int) ;
 int get_clock_tick_rate () ;
 int platform_set_drvdata (struct platform_device*,struct rtc_device*) ;
 struct rtc_device* rtc_device_register (int ,int *,int *,int ) ;
 int sa1100_rtc_ops ;
 int timer_freq ;

__attribute__((used)) static int sa1100_rtc_probe(struct platform_device *pdev)
{
 struct rtc_device *rtc;

 timer_freq = get_clock_tick_rate();
 if (RTTR == 0) {
  RTTR = RTC_DEF_DIVIDER + (RTC_DEF_TRIM << 16);
  dev_warn(&pdev->dev, "warning: initializing default clock divider/trim value\n");

  RCNR = 0;
 }

 device_init_wakeup(&pdev->dev, 1);

 rtc = rtc_device_register(pdev->name, &pdev->dev, &sa1100_rtc_ops,
    THIS_MODULE);

 if (IS_ERR(rtc))
  return PTR_ERR(rtc);

 platform_set_drvdata(pdev, rtc);

 return 0;
}
