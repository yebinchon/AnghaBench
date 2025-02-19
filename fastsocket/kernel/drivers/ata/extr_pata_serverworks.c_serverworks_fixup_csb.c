
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {scalar_t__ revision; int devfn; } ;


 int PCI_DEVICE_ID_SERVERWORKS_CSB5 ;
 int PCI_DEVICE_ID_SERVERWORKS_CSB6 ;
 int PCI_FUNC (int ) ;
 int PCI_VENDOR_ID_SERVERWORKS ;
 scalar_t__ SVWKS_CSB5_REVISION_NEW ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,int *) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static int serverworks_fixup_csb(struct pci_dev *pdev)
{
 u8 btr;


 if (!(PCI_FUNC(pdev->devfn) & 1)) {
  struct pci_dev * findev = ((void*)0);
  u32 reg4c = 0;
  findev = pci_get_device(PCI_VENDOR_ID_SERVERWORKS,
   PCI_DEVICE_ID_SERVERWORKS_CSB5, ((void*)0));
  if (findev) {
   pci_read_config_dword(findev, 0x4C, &reg4c);
   reg4c &= ~0x000007FF;
   reg4c |= 0x00000040;
   reg4c |= 0x00000020;
   pci_write_config_dword(findev, 0x4C, reg4c);
   pci_dev_put(findev);
  }
 } else {
  struct pci_dev * findev = ((void*)0);
  u8 reg41 = 0;

  findev = pci_get_device(PCI_VENDOR_ID_SERVERWORKS,
    PCI_DEVICE_ID_SERVERWORKS_CSB6, ((void*)0));
  if (findev) {
   pci_read_config_byte(findev, 0x41, &reg41);
   reg41 &= ~0x40;
   pci_write_config_byte(findev, 0x41, reg41);
   pci_dev_put(findev);
  }
 }
 pci_read_config_byte(pdev, 0x5A, &btr);
 btr &= ~0x40;
 if (!(PCI_FUNC(pdev->devfn) & 1))
  btr |= 0x2;
 else
  btr |= (pdev->revision >= SVWKS_CSB5_REVISION_NEW) ? 0x3 : 0x2;
 pci_write_config_byte(pdev, 0x5A, btr);

 return btr;
}
