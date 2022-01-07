
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mscp {int dummy; } ;
struct Scsi_Host {unsigned int can_queue; scalar_t__ dma_channel; int n_io_port; int io_port; int irq; } ;
struct TYPE_4__ {TYPE_1__* cp; int pdev; } ;
struct TYPE_3__ {int cp_dma_addr; int sglist; } ;


 int FALSE ;
 TYPE_2__* HD (unsigned int) ;
 scalar_t__ NO_DMA ;
 int PCI_DMA_BIDIRECTIONAL ;
 int driver_name ;
 int free_dma (scalar_t__) ;
 int free_irq (int ,int *) ;
 int kfree (int ) ;
 int panic (char*,int ) ;
 int pci_unmap_single (int ,int ,int,int ) ;
 int release_region (int ,int ) ;
 int scsi_unregister (struct Scsi_Host*) ;
 struct Scsi_Host** sh ;
 int * sha ;

__attribute__((used)) static int u14_34f_release(struct Scsi_Host *shpnt) {
   unsigned int i, j;

   for (j = 0; sh[j] != ((void*)0) && sh[j] != shpnt; j++);

   if (sh[j] == ((void*)0))
      panic("%s: release, invalid Scsi_Host pointer.\n", driver_name);

   for (i = 0; i < sh[j]->can_queue; i++)
      kfree((&HD(j)->cp[i])->sglist);

   for (i = 0; i < sh[j]->can_queue; i++)
      pci_unmap_single(HD(j)->pdev, HD(j)->cp[i].cp_dma_addr,
                     sizeof(struct mscp), PCI_DMA_BIDIRECTIONAL);

   free_irq(sh[j]->irq, &sha[j]);

   if (sh[j]->dma_channel != NO_DMA)
      free_dma(sh[j]->dma_channel);

   release_region(sh[j]->io_port, sh[j]->n_io_port);
   scsi_unregister(sh[j]);
   return FALSE;
}
