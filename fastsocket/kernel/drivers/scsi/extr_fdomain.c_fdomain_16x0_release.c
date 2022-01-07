
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ n_io_port; scalar_t__ io_port; scalar_t__ irq; } ;


 scalar_t__ PCI_bus ;
 int PCI_dev ;
 int free_irq (scalar_t__,struct Scsi_Host*) ;
 int pci_dev_put (int ) ;
 int release_region (scalar_t__,scalar_t__) ;

__attribute__((used)) static int fdomain_16x0_release(struct Scsi_Host *shpnt)
{
 if (shpnt->irq)
  free_irq(shpnt->irq, shpnt);
 if (shpnt->io_port && shpnt->n_io_port)
  release_region(shpnt->io_port, shpnt->n_io_port);
 if (PCI_bus)
  pci_dev_put(PCI_dev);
 return 0;
}
