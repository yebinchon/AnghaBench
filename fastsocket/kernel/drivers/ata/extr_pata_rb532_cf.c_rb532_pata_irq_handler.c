
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb532_cf_info {int irq; int gpio_line; } ;
struct ata_host {struct rb532_cf_info* private_data; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_TYPE_LEVEL_HIGH ;
 int IRQ_TYPE_LEVEL_LOW ;
 int ata_sff_interrupt (int ,void*) ;
 scalar_t__ gpio_get_value (int ) ;
 int set_irq_type (int ,int ) ;

__attribute__((used)) static irqreturn_t rb532_pata_irq_handler(int irq, void *dev_instance)
{
 struct ata_host *ah = dev_instance;
 struct rb532_cf_info *info = ah->private_data;

 if (gpio_get_value(info->gpio_line)) {
  set_irq_type(info->irq, IRQ_TYPE_LEVEL_LOW);
  ata_sff_interrupt(info->irq, dev_instance);
 } else {
  set_irq_type(info->irq, IRQ_TYPE_LEVEL_HIGH);
 }

 return IRQ_HANDLED;
}
