
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; struct rtc_device* rtc; } ;
struct wm8350 {TYPE_2__ rtc; } ;
struct rtc_device {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int RTC_AF ;
 int RTC_IRQF ;
 int WM8350_RTC_ALMSET ;
 int WM8350_RTC_TIME_CONTROL ;
 int dev_err (int *,char*,int) ;
 int rtc_update_irq (struct rtc_device*,int,int) ;
 int wm8350_set_bits (struct wm8350*,int ,int ) ;

__attribute__((used)) static void wm8350_rtc_alarm_handler(struct wm8350 *wm8350, int irq,
         void *data)
{
 struct rtc_device *rtc = wm8350->rtc.rtc;
 int ret;

 rtc_update_irq(rtc, 1, RTC_IRQF | RTC_AF);


 ret = wm8350_set_bits(wm8350, WM8350_RTC_TIME_CONTROL,
         WM8350_RTC_ALMSET);
 if (ret != 0) {
  dev_err(&(wm8350->rtc.pdev->dev),
   "Failed to disable alarm: %d\n", ret);
 }
}
