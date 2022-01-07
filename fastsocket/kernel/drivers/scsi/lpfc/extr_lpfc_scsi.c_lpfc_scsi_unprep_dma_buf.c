
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lpfc_scsi_buf {scalar_t__ seg_cnt; scalar_t__ prot_seg_cnt; TYPE_2__* pCmd; } ;
struct lpfc_hba {TYPE_1__* pcidev; } ;
struct TYPE_6__ {int sc_data_direction; } ;
struct TYPE_5__ {int dev; } ;


 int dma_unmap_sg (int *,int ,int ,int ) ;
 int scsi_dma_unmap (TYPE_2__*) ;
 int scsi_prot_sg_count (TYPE_2__*) ;
 int scsi_prot_sglist (TYPE_2__*) ;

__attribute__((used)) static void
lpfc_scsi_unprep_dma_buf(struct lpfc_hba *phba, struct lpfc_scsi_buf *psb)
{






 if (psb->seg_cnt > 0)
  scsi_dma_unmap(psb->pCmd);
 if (psb->prot_seg_cnt > 0)
  dma_unmap_sg(&phba->pcidev->dev, scsi_prot_sglist(psb->pCmd),
    scsi_prot_sg_count(psb->pCmd),
    psb->pCmd->sc_data_direction);
}
