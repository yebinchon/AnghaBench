
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int dummy; } ;


 int CX23417_OSC_EN ;
 int cx231xx_set_gpio_value (struct cx231xx*,int ,int) ;

void cx231xx_enable_OSC(struct cx231xx *dev)
{
 cx231xx_set_gpio_value(dev, CX23417_OSC_EN, 1);
}
