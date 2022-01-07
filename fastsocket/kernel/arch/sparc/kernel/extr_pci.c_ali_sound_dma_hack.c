
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int PCI_DEVICE_ID_AL_M1533 ;
 int PCI_VENDOR_ID_AL ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,int *) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void ali_sound_dma_hack(struct pci_dev *pdev, int set_bit)
{
 struct pci_dev *ali_isa_bridge;
 u8 val;




 ali_isa_bridge = pci_get_device(PCI_VENDOR_ID_AL,
      PCI_DEVICE_ID_AL_M1533,
      ((void*)0));

 pci_read_config_byte(ali_isa_bridge, 0x7e, &val);
 if (set_bit)
  val |= 0x01;
 else
  val &= ~0x01;
 pci_write_config_byte(ali_isa_bridge, 0x7e, val);
 pci_dev_put(ali_isa_bridge);
}
