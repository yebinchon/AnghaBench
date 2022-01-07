
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int BIT_RTC_INTERRUPTS_REG_IT_ALARM_M ;
 int mask_rtc_irq_bit (int ) ;
 int set_rtc_irq_bit (int ) ;

__attribute__((used)) static int twl4030_rtc_alarm_irq_enable(struct device *dev, unsigned enabled)
{
 int ret;

 if (enabled)
  ret = set_rtc_irq_bit(BIT_RTC_INTERRUPTS_REG_IT_ALARM_M);
 else
  ret = mask_rtc_irq_bit(BIT_RTC_INTERRUPTS_REG_IT_ALARM_M);

 return ret;
}
