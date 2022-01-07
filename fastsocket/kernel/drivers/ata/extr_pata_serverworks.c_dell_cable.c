
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int subsystem_device; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int dell_cable(struct ata_port *ap) {
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);

 if (pdev->subsystem_device & (1 << (ap->port_no + 14)))
  return ATA_CBL_PATA80;
 return ATA_CBL_PATA40;
}
