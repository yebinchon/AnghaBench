
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int printk (char*,int,int) ;

int pcibios_map_platform_irq(struct pci_dev *pdev, u8 slot, u8 pin)
{






 int irq = ((slot + pin - 1) & 0x3) + 5;

 if ((slot | (pin - 1)) > 0x3) {
  printk("PCI: Bad IRQ mapping request for slot %d pin %c\n",
         slot, pin - 1 + 'A');
  return -1;
 }
 return irq;
}
