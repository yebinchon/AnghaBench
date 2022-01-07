
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int RTC_1HZ_BIT ;
 int mxc_rtc_irq_enable (struct device*,int ,unsigned int) ;

__attribute__((used)) static int mxc_rtc_update_irq_enable(struct device *dev, unsigned int enabled)
{
 mxc_rtc_irq_enable(dev, RTC_1HZ_BIT, enabled);
 return 0;
}
