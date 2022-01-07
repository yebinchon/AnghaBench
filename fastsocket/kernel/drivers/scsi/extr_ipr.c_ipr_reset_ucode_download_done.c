
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_sglist {int num_sg; int scatterlist; } ;
struct ipr_ioa_cfg {int pdev; struct ipr_sglist* ucode_sglist; } ;
struct ipr_cmnd {int job_step; struct ipr_ioa_cfg* ioa_cfg; } ;


 int DMA_TO_DEVICE ;
 int IPR_RC_JOB_CONTINUE ;
 int ipr_reset_alert ;
 int pci_unmap_sg (int ,int ,int ,int ) ;

__attribute__((used)) static int ipr_reset_ucode_download_done(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 struct ipr_sglist *sglist = ioa_cfg->ucode_sglist;

 pci_unmap_sg(ioa_cfg->pdev, sglist->scatterlist,
       sglist->num_sg, DMA_TO_DEVICE);

 ipr_cmd->job_step = ipr_reset_alert;
 return IPR_RC_JOB_CONTINUE;
}
