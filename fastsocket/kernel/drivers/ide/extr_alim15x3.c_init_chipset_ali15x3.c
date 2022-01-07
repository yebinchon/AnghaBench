
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int revision; scalar_t__ vendor; int bus; } ;


 int PCI_DEVFN (int ,int ) ;
 int PCI_DEVICE_ID_AL_M1533 ;
 scalar_t__ PCI_VENDOR_ID_AL ;
 int chip_is_1543c_e ;
 struct pci_dev* isa_dev ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int m5229_revision ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (scalar_t__,int ,int *) ;
 struct pci_dev* pci_get_slot (int ,int ) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static int init_chipset_ali15x3(struct pci_dev *dev)
{
 unsigned long flags;
 u8 tmpbyte;
 struct pci_dev *north = pci_get_slot(dev->bus, PCI_DEVFN(0,0));

 m5229_revision = dev->revision;

 isa_dev = pci_get_device(PCI_VENDOR_ID_AL, PCI_DEVICE_ID_AL_M1533, ((void*)0));

 local_irq_save(flags);

 if (m5229_revision < 0xC2) {





  pci_read_config_byte(dev, 0x4b, &tmpbyte);



  pci_write_config_byte(dev, 0x4b, tmpbyte & 0x7F);



  if (m5229_revision >= 0x20 && isa_dev) {
   pci_read_config_byte(isa_dev, 0x5e, &tmpbyte);
   chip_is_1543c_e = ((tmpbyte & 0x1e) == 0x12) ? 1: 0;
  }
  goto out;
 }
 pci_read_config_byte(dev, 0x4b, &tmpbyte);
 pci_write_config_byte(dev, 0x4b, tmpbyte | 0x08);







 if (north && north->vendor != PCI_VENDOR_ID_AL)
  goto out;

 if (m5229_revision < 0xC5 && isa_dev)
 {




  pci_read_config_byte(isa_dev, 0x79, &tmpbyte);
  if (m5229_revision == 0xC2) {



   pci_write_config_byte(isa_dev, 0x79, tmpbyte | 0x04);
  } else if (m5229_revision >= 0xC3) {



   pci_write_config_byte(isa_dev, 0x79, tmpbyte | 0x02);
  }
 }

out:
 if (m5229_revision >= 0x20) {
  pci_read_config_byte(dev, 0x53, &tmpbyte);

  if (m5229_revision <= 0x20)
   tmpbyte = (tmpbyte & (~0x02)) | 0x01;
  else if (m5229_revision == 0xc7 || m5229_revision == 0xc8)
   tmpbyte |= 0x03;
  else
   tmpbyte |= 0x01;

  pci_write_config_byte(dev, 0x53, tmpbyte);
 }
 pci_dev_put(north);
 pci_dev_put(isa_dev);
 local_irq_restore(flags);
 return 0;
}
