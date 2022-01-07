
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int pin; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int pci_is_root_bus (TYPE_1__*) ;
 int pci_swizzle_interrupt_pin (struct pci_dev*,int) ;

int
pci_get_interrupt_pin(struct pci_dev *dev, struct pci_dev **bridge)
{
 u8 pin;

 pin = dev->pin;
 if (!pin)
  return -1;

 while (!pci_is_root_bus(dev->bus)) {
  pin = pci_swizzle_interrupt_pin(dev, pin);
  dev = dev->bus->self;
 }
 *bridge = dev;
 return pin;
}
