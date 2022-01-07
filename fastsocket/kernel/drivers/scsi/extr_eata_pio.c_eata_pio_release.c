
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {size_t irq; scalar_t__ n_io_port; scalar_t__ io_port; } ;
struct TYPE_3__ {scalar_t__ channel; scalar_t__ pdev; } ;
typedef TYPE_1__ hostdata ;


 TYPE_1__* SD (struct Scsi_Host*) ;
 int free_irq (size_t,int *) ;
 int pci_dev_put (scalar_t__) ;
 int* reg_IRQ ;
 int release_region (scalar_t__,scalar_t__) ;

__attribute__((used)) static int eata_pio_release(struct Scsi_Host *sh)
{
 hostdata *hd = SD(sh);
 if (sh->irq && reg_IRQ[sh->irq] == 1)
  free_irq(sh->irq, ((void*)0));
 else
  reg_IRQ[sh->irq]--;
 if (SD(sh)->channel == 0) {
  if (sh->io_port && sh->n_io_port)
   release_region(sh->io_port, sh->n_io_port);
 }

 if (hd->pdev)
  pci_dev_put(hd->pdev);
 return 1;
}
