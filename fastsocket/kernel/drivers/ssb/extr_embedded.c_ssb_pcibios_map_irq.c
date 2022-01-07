
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int ENODEV ;
 int gige_map_irq_callback ;
 int ssb_for_each_bus_call (unsigned long,int ) ;
 int ssb_pcicore_pcibios_map_irq (struct pci_dev const*,int ,int ) ;

int ssb_pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 int res;




 res = ssb_pcicore_pcibios_map_irq(dev, slot, pin);
 if (res >= 0)
  return res;







 return -ENODEV;
}
