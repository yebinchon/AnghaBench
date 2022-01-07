
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct axon_ram_bank* platform_data; } ;
struct of_device {TYPE_1__ dev; } ;
struct axon_ram_bank {int ecc_counter; } ;
typedef int irqreturn_t ;


 int BUG_ON (int) ;
 int IRQ_HANDLED ;
 int dev_err (TYPE_1__*,char*) ;

__attribute__((used)) static irqreturn_t
axon_ram_irq_handler(int irq, void *dev)
{
 struct of_device *device = dev;
 struct axon_ram_bank *bank = device->dev.platform_data;

 BUG_ON(!bank);

 dev_err(&device->dev, "Correctable memory error occured\n");
 bank->ecc_counter++;
 return IRQ_HANDLED;
}
