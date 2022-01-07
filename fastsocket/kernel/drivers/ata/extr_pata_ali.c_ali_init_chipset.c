
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int revision; scalar_t__ vendor; } ;


 int PCI_DEVFN (int ,int ) ;
 scalar_t__ PCI_VENDOR_ID_AL ;
 struct pci_dev* ali_isa_bridge ;
 int ata_pci_bmdma_clear_simplex (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_bus_and_slot (int ,int ) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void ali_init_chipset(struct pci_dev *pdev)
{
 u8 tmp;
 struct pci_dev *north;






 if (pdev->revision <= 0x20) {
  pci_read_config_byte(pdev, 0x53, &tmp);
  tmp |= 0x03;
  pci_write_config_byte(pdev, 0x53, tmp);
 } else {
  pci_read_config_byte(pdev, 0x4a, &tmp);
  pci_write_config_byte(pdev, 0x4a, tmp | 0x20);
  pci_read_config_byte(pdev, 0x4B, &tmp);
  if (pdev->revision < 0xC2)


   tmp &= 0x7F;

  if (pdev->revision >= 0xc2)
   tmp |= 0x01;
  pci_write_config_byte(pdev, 0x4B, tmp | 0x08);





  pci_read_config_byte(pdev, 0x53, &tmp);
  if (pdev->revision >= 0xc7)
   tmp |= 0x03;
  else
   tmp |= 0x01;
  pci_write_config_byte(pdev, 0x53, tmp);
 }
 north = pci_get_bus_and_slot(0, PCI_DEVFN(0,0));
 if (north && north->vendor == PCI_VENDOR_ID_AL && ali_isa_bridge) {


  pci_read_config_byte(ali_isa_bridge, 0x79, &tmp);
  if (pdev->revision == 0xC2)
   pci_write_config_byte(ali_isa_bridge, 0x79, tmp | 0x04);
  else if (pdev->revision > 0xC2 && pdev->revision < 0xC5)
   pci_write_config_byte(ali_isa_bridge, 0x79, tmp | 0x02);
 }
 pci_dev_put(north);
 ata_pci_bmdma_clear_simplex(pdev);
}
