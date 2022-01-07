
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int MRDMODE ;
 int PCI_LATENCY_TIMER ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static int init_chipset_cmd64x(struct pci_dev *dev)
{
 u8 mrdmode = 0;


 (void) pci_write_config_byte(dev, PCI_LATENCY_TIMER, 64);
 (void) pci_read_config_byte (dev, MRDMODE, &mrdmode);
 mrdmode &= ~0x30;
 (void) pci_write_config_byte(dev, MRDMODE, (mrdmode | 0x02));

 return 0;
}
