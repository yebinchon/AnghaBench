
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int dummy; } ;


 int CX23417_RESET ;
 int cx231xx_set_gpio_value (struct cx231xx*,int ,int) ;
 int msleep (int) ;

void cx231xx_reset_out(struct cx231xx *dev)
{
 cx231xx_set_gpio_value(dev, CX23417_RESET, 1);
 msleep(200);
 cx231xx_set_gpio_value(dev, CX23417_RESET, 0);
 msleep(200);
 cx231xx_set_gpio_value(dev, CX23417_RESET, 1);
}
