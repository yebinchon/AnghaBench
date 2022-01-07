
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxc_gpio_port {scalar_t__ base; } ;
struct irq_desc {int dummy; } ;


 scalar_t__ GPIO_IMR ;
 scalar_t__ GPIO_ISR ;
 int __raw_readl (scalar_t__) ;
 scalar_t__ get_irq_data (int) ;
 int gpio_table_size ;
 int mxc_gpio_irq_handler (struct mxc_gpio_port*,int) ;

__attribute__((used)) static void mx2_gpio_irq_handler(u32 irq, struct irq_desc *desc)
{
 int i;
 u32 irq_msk, irq_stat;
 struct mxc_gpio_port *port = (struct mxc_gpio_port *)get_irq_data(irq);


 for (i = 0; i < gpio_table_size; i++) {
  irq_msk = __raw_readl(port[i].base + GPIO_IMR);
  if (!irq_msk)
   continue;

  irq_stat = __raw_readl(port[i].base + GPIO_ISR) & irq_msk;
  if (irq_stat)
   mxc_gpio_irq_handler(&port[i], irq_stat);
 }
}
