
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {scalar_t__ subsystem_vendor; scalar_t__ vendor; scalar_t__ device; int subsystem_device; } ;
struct TYPE_3__ {int channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 scalar_t__ PCI_DEVICE_ID_SERVERWORKS_CSB5IDE ;
 scalar_t__ PCI_DEVICE_ID_SERVERWORKS_CSB6IDE ;
 scalar_t__ PCI_VENDOR_ID_DELL ;
 scalar_t__ PCI_VENDOR_ID_SERVERWORKS ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 ata66_svwks_dell(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);

 if (dev->subsystem_vendor == PCI_VENDOR_ID_DELL &&
     dev->vendor == PCI_VENDOR_ID_SERVERWORKS &&
     (dev->device == PCI_DEVICE_ID_SERVERWORKS_CSB5IDE ||
      dev->device == PCI_DEVICE_ID_SERVERWORKS_CSB6IDE))
  return ((1 << (hwif->channel + 14)) &
   dev->subsystem_device) ? ATA_CBL_PATA80 : ATA_CBL_PATA40;
 return ATA_CBL_PATA40;
}
