
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipr_sglist {int num_dma_sg; int num_sg; int scatterlist; } ;
struct ipr_ioa_cfg {TYPE_1__* host; struct ipr_sglist* ucode_sglist; scalar_t__ in_reset_reload; int reset_wait_q; TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int host_lock; } ;


 int DMA_TO_DEVICE ;
 int EIO ;
 int IPR_SHUTDOWN_NORMAL ;
 int dev_err (int *,char*) ;
 int ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ) ;
 int pci_map_sg (TYPE_2__*,int ,int ,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int ipr_update_ioa_ucode(struct ipr_ioa_cfg *ioa_cfg,
    struct ipr_sglist *sglist)
{
 unsigned long lock_flags;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 while(ioa_cfg->in_reset_reload) {
  spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
  wait_event(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
  spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 }

 if (ioa_cfg->ucode_sglist) {
  spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
  dev_err(&ioa_cfg->pdev->dev,
   "Microcode download already in progress\n");
  return -EIO;
 }

 sglist->num_dma_sg = pci_map_sg(ioa_cfg->pdev, sglist->scatterlist,
     sglist->num_sg, DMA_TO_DEVICE);

 if (!sglist->num_dma_sg) {
  spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
  dev_err(&ioa_cfg->pdev->dev,
   "Failed to map microcode download buffer!\n");
  return -EIO;
 }

 ioa_cfg->ucode_sglist = sglist;
 ipr_initiate_ioa_reset(ioa_cfg, IPR_SHUTDOWN_NORMAL);
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 wait_event(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 ioa_cfg->ucode_sglist = ((void*)0);
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 return 0;
}
