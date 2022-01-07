
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633_rtc {int rtc_dev; } ;




 int RTC_AF ;
 int RTC_IRQF ;
 int RTC_UF ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static void pcf50633_rtc_irq(int irq, void *data)
{
 struct pcf50633_rtc *rtc = data;

 switch (irq) {
 case 129:
  rtc_update_irq(rtc->rtc_dev, 1, RTC_AF | RTC_IRQF);
  break;
 case 128:
  rtc_update_irq(rtc->rtc_dev, 1, RTC_UF | RTC_IRQF);
  break;
 }
}
