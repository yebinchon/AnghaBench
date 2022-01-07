
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;
struct device {int dummy; } ;


 struct wm8350* dev_get_drvdata (struct device*) ;
 int wm8350_rtc_start_alarm (struct wm8350*) ;
 int wm8350_rtc_stop_alarm (struct wm8350*) ;

__attribute__((used)) static int wm8350_rtc_alarm_irq_enable(struct device *dev,
           unsigned int enabled)
{
 struct wm8350 *wm8350 = dev_get_drvdata(dev);

 if (enabled)
  return wm8350_rtc_start_alarm(wm8350);
 else
  return wm8350_rtc_stop_alarm(wm8350);
}
