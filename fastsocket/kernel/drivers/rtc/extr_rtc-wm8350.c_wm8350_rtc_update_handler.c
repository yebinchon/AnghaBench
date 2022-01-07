
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct rtc_device* rtc; } ;
struct wm8350 {TYPE_1__ rtc; } ;
struct rtc_device {int dummy; } ;


 int RTC_IRQF ;
 int RTC_UF ;
 int rtc_update_irq (struct rtc_device*,int,int) ;

__attribute__((used)) static void wm8350_rtc_update_handler(struct wm8350 *wm8350, int irq,
          void *data)
{
 struct rtc_device *rtc = wm8350->rtc.rtc;

 rtc_update_irq(rtc, 1, RTC_IRQF | RTC_UF);
}
