
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ATA_CBL_PATA40_SHORT ;
 int ATA_CBL_PATA_UNK ;
 scalar_t__ atp867x_cable_override (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int atp867x_cable_detect(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);

 if (atp867x_cable_override(pdev))
  return ATA_CBL_PATA40_SHORT;

 return ATA_CBL_PATA_UNK;
}
