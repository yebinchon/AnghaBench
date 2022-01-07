
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IR_OFF ;
 int TOSA_GPIO_IRDA_TX ;
 int TOSA_GPIO_IR_POWERDWN ;
 int gpio_direction_output (int ,int ) ;
 int gpio_set_value (int ,int) ;
 int pxa2xx_transceiver_mode (struct device*,int) ;

__attribute__((used)) static void tosa_irda_transceiver_mode(struct device *dev, int mode)
{
 if (mode & IR_OFF) {
  gpio_set_value(TOSA_GPIO_IR_POWERDWN, 0);
  pxa2xx_transceiver_mode(dev, mode);
  gpio_direction_output(TOSA_GPIO_IRDA_TX, 0);
 } else {
  pxa2xx_transceiver_mode(dev, mode);
  gpio_set_value(TOSA_GPIO_IR_POWERDWN, 1);
 }
}
