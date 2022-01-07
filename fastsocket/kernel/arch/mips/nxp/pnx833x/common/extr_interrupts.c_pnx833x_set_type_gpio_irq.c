
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_INT_EDGE_BOTH ;
 int GPIO_INT_EDGE_FALLING ;
 int GPIO_INT_EDGE_RISING ;
 int GPIO_INT_LEVEL_HIGH ;
 int GPIO_INT_LEVEL_LOW ;
 int GPIO_INT_NONE ;





 unsigned int PNX833X_GPIO_IRQ_BASE ;
 int pnx833x_gpio_setup_irq (int,int) ;

__attribute__((used)) static int pnx833x_set_type_gpio_irq(unsigned int irq, unsigned int flow_type)
{
 int pin = irq - PNX833X_GPIO_IRQ_BASE;
 int gpio_mode;

 switch (flow_type) {
 case 130:
  gpio_mode = GPIO_INT_EDGE_RISING;
  break;
 case 131:
  gpio_mode = GPIO_INT_EDGE_FALLING;
  break;
 case 132:
  gpio_mode = GPIO_INT_EDGE_BOTH;
  break;
 case 129:
  gpio_mode = GPIO_INT_LEVEL_HIGH;
  break;
 case 128:
  gpio_mode = GPIO_INT_LEVEL_LOW;
  break;
 default:
  gpio_mode = GPIO_INT_NONE;
  break;
 }

 pnx833x_gpio_setup_irq(gpio_mode, pin);

 return 0;
}
