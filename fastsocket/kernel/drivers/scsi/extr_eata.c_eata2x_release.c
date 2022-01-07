
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mssp {int dummy; } ;
struct mscp {int dummy; } ;
struct hostdata {size_t board_number; int sp_dma_addr; scalar_t__ sp_cpu_addr; int pdev; TYPE_1__* cp; } ;
struct Scsi_Host {unsigned int can_queue; scalar_t__ dma_channel; int n_io_port; int io_port; int irq; scalar_t__ hostdata; } ;
struct TYPE_2__ {int cp_dma_addr; int sglist; } ;


 scalar_t__ NO_DMA ;
 int PCI_DMA_BIDIRECTIONAL ;
 int free_dma (scalar_t__) ;
 int free_irq (int ,int *) ;
 int kfree (int ) ;
 int pci_free_consistent (int ,int,scalar_t__,int ) ;
 int pci_unmap_single (int ,int ,int,int ) ;
 int release_region (int ,int ) ;
 int scsi_unregister (struct Scsi_Host*) ;
 int * sha ;

__attribute__((used)) static int eata2x_release(struct Scsi_Host *shost)
{
 struct hostdata *ha = (struct hostdata *)shost->hostdata;
 unsigned int i;

 for (i = 0; i < shost->can_queue; i++)
  kfree((&ha->cp[i])->sglist);

 for (i = 0; i < shost->can_queue; i++)
  pci_unmap_single(ha->pdev, ha->cp[i].cp_dma_addr,
     sizeof(struct mscp), PCI_DMA_BIDIRECTIONAL);

 if (ha->sp_cpu_addr)
  pci_free_consistent(ha->pdev, sizeof(struct mssp),
        ha->sp_cpu_addr, ha->sp_dma_addr);

 free_irq(shost->irq, &sha[ha->board_number]);

 if (shost->dma_channel != NO_DMA)
  free_dma(shost->dma_channel);

 release_region(shost->io_port, shost->n_io_port);
 scsi_unregister(shost);
 return 0;
}
