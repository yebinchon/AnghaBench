
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int dummy; } ;


 int SLEEP_S5H1432 ;
 int cx231xx_set_gpio_value (struct cx231xx*,int ,int ) ;

void cx231xx_sleep_s5h1432(struct cx231xx *dev)
{
 cx231xx_set_gpio_value(dev, SLEEP_S5H1432, 0);
}
