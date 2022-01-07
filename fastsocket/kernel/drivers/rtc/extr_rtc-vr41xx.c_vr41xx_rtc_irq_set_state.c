
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int pie_irq ;

__attribute__((used)) static int vr41xx_rtc_irq_set_state(struct device *dev, int enabled)
{
 if (enabled)
  enable_irq(pie_irq);
 else
  disable_irq(pie_irq);

 return 0;
}
