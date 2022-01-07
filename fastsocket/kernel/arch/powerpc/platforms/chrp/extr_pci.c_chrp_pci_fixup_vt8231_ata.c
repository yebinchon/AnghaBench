
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int irq; int class; int dev; } ;


 int PCI_CLASS_PROG ;
 int PCI_DEVICE_ID_VIA_8231 ;
 int PCI_VENDOR_ID_VIA ;
 scalar_t__ _CHRP_Pegasos ;
 scalar_t__ _chrp_type ;
 int chrp ;
 int dev_info (int *,char*) ;
 int machine_is (int ) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,int *) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static void chrp_pci_fixup_vt8231_ata(struct pci_dev *viaide)
{
 u8 progif;
 struct pci_dev *viaisa;

 if (!machine_is(chrp) || _chrp_type != _CHRP_Pegasos)
  return;
 if (viaide->irq != 14)
  return;

 viaisa = pci_get_device(PCI_VENDOR_ID_VIA, PCI_DEVICE_ID_VIA_8231, ((void*)0));
 if (!viaisa)
  return;
 dev_info(&viaide->dev, "Fixing VIA IDE, force legacy mode on\n");

 pci_read_config_byte(viaide, PCI_CLASS_PROG, &progif);
 pci_write_config_byte(viaide, PCI_CLASS_PROG, progif & ~0x5);
 viaide->class &= ~0x5;

 pci_dev_put(viaisa);
}
