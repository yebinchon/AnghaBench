
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int OMAP_RTC_STATUS_1S_EVENT ;
 int OMAP_RTC_STATUS_ALARM ;
 int OMAP_RTC_STATUS_REG ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 unsigned long RTC_UF ;
 int rtc_read (int ) ;
 int rtc_update_irq (void*,int,unsigned long) ;
 int rtc_write (int,int ) ;

__attribute__((used)) static irqreturn_t rtc_irq(int irq, void *rtc)
{
 unsigned long events = 0;
 u8 irq_data;

 irq_data = rtc_read(OMAP_RTC_STATUS_REG);


 if (irq_data & OMAP_RTC_STATUS_ALARM) {
  rtc_write(OMAP_RTC_STATUS_ALARM, OMAP_RTC_STATUS_REG);
  events |= RTC_IRQF | RTC_AF;
 }


 if (irq_data & OMAP_RTC_STATUS_1S_EVENT)
  events |= RTC_IRQF | RTC_UF;

 rtc_update_irq(rtc, 1, events);

 return IRQ_HANDLED;
}
