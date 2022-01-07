
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int device; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_2__ {int dev; } ;


 int ENOENT ;
 int ata_sff_prereset (struct ata_link*,unsigned long) ;
 int marvell_pata_active (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int marvell_pre_reset(struct ata_link *link, unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);

 if (pdev->device == 0x6145 && ap->port_no == 0 &&
  !marvell_pata_active(pdev))
   return -ENOENT;

 return ata_sff_prereset(link, deadline);
}
