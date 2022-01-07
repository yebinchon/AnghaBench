
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sv_cable_table {scalar_t__ device; scalar_t__ subvendor; int (* cable_detect ) (struct ata_port*) ;} ;
struct pci_dev {scalar_t__ device; scalar_t__ subsystem_vendor; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int BUG () ;
 scalar_t__ PCI_ANY_ID ;
 struct sv_cable_table* cable_detect ;
 int stub1 (struct ata_port*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int serverworks_cable_detect(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 struct sv_cable_table *cb = cable_detect;

 while(cb->device) {
  if (cb->device == pdev->device &&
      (cb->subvendor == pdev->subsystem_vendor ||
        cb->subvendor == PCI_ANY_ID)) {
   return cb->cable_detect(ap);
  }
  cb++;
 }

 BUG();
 return -1;
}
