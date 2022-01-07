
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct u300_gpio_port {int number; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int data; int (* callback ) (int ) ;} ;


 int IRQ_HANDLED ;
 int U300_GPIO_PORTX_SPACING ;
 scalar_t__ U300_GPIO_PXIEV ;
 int U300_GPIO_PXIEV_ALL_IRQ_EVENT_MASK ;
 int __ffs (int) ;
 int dev_dbg (int ,char*,unsigned int) ;
 TYPE_1__* gpio_pin ;
 int gpiodev ;
 int readl (scalar_t__) ;
 int stub1 (int ) ;
 scalar_t__ virtbase ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t gpio_irq_handler(int irq, void *dev_id)
{
 struct u300_gpio_port *port = dev_id;
 u32 val;
 int pin;


 val = readl(virtbase + U300_GPIO_PXIEV + port->number *
    U300_GPIO_PORTX_SPACING);

 val &= readl(virtbase + U300_GPIO_PXIEV + port->number *
    U300_GPIO_PORTX_SPACING);

 val &= U300_GPIO_PXIEV_ALL_IRQ_EVENT_MASK;

 writel(val, virtbase + U300_GPIO_PXIEV + port->number *
    U300_GPIO_PORTX_SPACING);

 while (val != 0) {
  unsigned gpio;

  pin = __ffs(val);

  val &= ~(1 << pin);
  gpio = (port->number << 3) + pin;

  if (gpio_pin[gpio].callback)
   (void)gpio_pin[gpio].callback(gpio_pin[gpio].data);
  else
   dev_dbg(gpiodev, "stray GPIO IRQ on line %d\n",
          gpio);
 }
 return IRQ_HANDLED;
}
