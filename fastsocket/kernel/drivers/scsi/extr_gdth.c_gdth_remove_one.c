
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct Scsi_Host {int dma_channel; scalar_t__ irq; } ;
typedef int gdth_msg_str ;
struct TYPE_5__ {scalar_t__ ccb_phys; int pdev; int msg_phys; scalar_t__ pmsg; int scratch_phys; scalar_t__ pscratch; int coal_stat_phys; scalar_t__ coal_stat; int * sdev; struct Scsi_Host* shost; } ;
typedef TYPE_1__ gdth_ha_str ;
typedef int gdth_coal_status ;
typedef int gdth_cmd_str ;


 int GDTH_SCRATCH ;
 int MAXOFFSETS ;
 int PCI_DMA_BIDIRECTIONAL ;
 int TRACE2 (char*) ;
 int free_dma (int) ;
 int free_irq (scalar_t__,TYPE_1__*) ;
 int gdth_flush (TYPE_1__*) ;
 int pci_free_consistent (int ,int,scalar_t__,int ) ;
 int pci_unmap_single (int ,scalar_t__,int,int ) ;
 int scsi_free_host_dev (int *) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static void gdth_remove_one(gdth_ha_str *ha)
{
 struct Scsi_Host *shp = ha->shost;

 TRACE2(("gdth_remove_one()\n"));

 scsi_remove_host(shp);

 gdth_flush(ha);

 if (ha->sdev) {
  scsi_free_host_dev(ha->sdev);
  ha->sdev = ((void*)0);
 }

 if (shp->irq)
  free_irq(shp->irq,ha);
 if (ha->pscratch)
  pci_free_consistent(ha->pdev, GDTH_SCRATCH,
   ha->pscratch, ha->scratch_phys);
 if (ha->pmsg)
  pci_free_consistent(ha->pdev, sizeof(gdth_msg_str),
   ha->pmsg, ha->msg_phys);
 if (ha->ccb_phys)
  pci_unmap_single(ha->pdev,ha->ccb_phys,
   sizeof(gdth_cmd_str),PCI_DMA_BIDIRECTIONAL);

 scsi_host_put(shp);
}
