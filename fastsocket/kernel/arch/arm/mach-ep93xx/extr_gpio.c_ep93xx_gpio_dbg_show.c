
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct seq_file {int dummy; } ;
struct irq_desc {int status; scalar_t__ action; } ;
struct gpio_chip {int ngpio; int label; } ;
struct TYPE_2__ {int base; } ;
struct ep93xx_gpio_chip {TYPE_1__ chip; int data_dir_reg; int data_reg; } ;
 int IRQ_TYPE_SENSE_MASK ;
 int IRQ_WAKEUP ;
 int __raw_readb (int ) ;
 int gpio_to_irq (int) ;
 scalar_t__ gpiochip_is_requested (struct gpio_chip*,int) ;
 struct irq_desc* irq_desc ;
 int seq_printf (struct seq_file*,char*,...) ;
 struct ep93xx_gpio_chip* to_ep93xx_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static void ep93xx_gpio_dbg_show(struct seq_file *s, struct gpio_chip *chip)
{
 struct ep93xx_gpio_chip *ep93xx_chip = to_ep93xx_gpio_chip(chip);
 u8 data_reg, data_dir_reg;
 int gpio, i;

 data_reg = __raw_readb(ep93xx_chip->data_reg);
 data_dir_reg = __raw_readb(ep93xx_chip->data_dir_reg);

 gpio = ep93xx_chip->chip.base;
 for (i = 0; i < chip->ngpio; i++, gpio++) {
  int is_out = data_dir_reg & (1 << i);

  seq_printf(s, " %s%d gpio-%-3d (%-12s) %s %s",
    chip->label, i, gpio,
    gpiochip_is_requested(chip, i) ? : "",
    is_out ? "out" : "in ",
    (data_reg & (1 << i)) ? "hi" : "lo");

  if (!is_out) {
   int irq = gpio_to_irq(gpio);
   struct irq_desc *desc = irq_desc + irq;

   if (irq >= 0 && desc->action) {
    char *trigger;

    switch (desc->status & IRQ_TYPE_SENSE_MASK) {
    case 128:
     trigger = "(default)";
     break;
    case 132:
     trigger = "edge-falling";
     break;
    case 131:
     trigger = "edge-rising";
     break;
    case 133:
     trigger = "edge-both";
     break;
    case 130:
     trigger = "level-high";
     break;
    case 129:
     trigger = "level-low";
     break;
    default:
     trigger = "?trigger?";
     break;
    }

    seq_printf(s, " irq-%d %s%s",
      irq, trigger,
      (desc->status & IRQ_WAKEUP)
       ? " wakeup" : "");
   }
  }

  seq_printf(s, "\n");
 }
}
