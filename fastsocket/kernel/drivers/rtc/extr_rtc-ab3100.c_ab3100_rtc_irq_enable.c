
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ab3100 {int dummy; } ;


 int AB3100_RTC ;
 int ab3100_mask_and_set_register_interruptible (struct ab3100*,int ,int,int) ;
 struct ab3100* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int ab3100_rtc_irq_enable(struct device *dev, unsigned int enabled)
{
 struct ab3100 *ab3100_data = dev_get_drvdata(dev);
 if (enabled)
  return ab3100_mask_and_set_register_interruptible(ab3100_data,
          AB3100_RTC, ~(1 << 2),
          1 << 2);
 else
  return ab3100_mask_and_set_register_interruptible(ab3100_data,
          AB3100_RTC, ~(1 << 2),
          0);
}
