
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {scalar_t__ subsystem_vendor; scalar_t__ device; } ;
struct TYPE_6__ {int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 scalar_t__ PCI_DEVICE_ID_SERVERWORKS_CSB6IDE ;
 scalar_t__ PCI_DEVICE_ID_SERVERWORKS_CSB6IDE2 ;
 scalar_t__ PCI_VENDOR_ID_DELL ;
 scalar_t__ PCI_VENDOR_ID_SERVERWORKS ;
 scalar_t__ PCI_VENDOR_ID_SUN ;
 int ata66_svwks_cobalt (TYPE_1__*) ;
 int ata66_svwks_dell (TYPE_1__*) ;
 int ata66_svwks_svwks (TYPE_1__*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 svwks_cable_detect(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);


 if (dev->subsystem_vendor == PCI_VENDOR_ID_SERVERWORKS)
  return ata66_svwks_svwks (hwif);


 if (dev->subsystem_vendor == PCI_VENDOR_ID_DELL)
  return ata66_svwks_dell (hwif);


 if (dev->subsystem_vendor == PCI_VENDOR_ID_SUN)
  return ata66_svwks_cobalt (hwif);


 if ((dev->device == PCI_DEVICE_ID_SERVERWORKS_CSB6IDE) ||
     (dev->device == PCI_DEVICE_ID_SERVERWORKS_CSB6IDE2))
  return ATA_CBL_PATA80;

 return ATA_CBL_PATA40;
}
