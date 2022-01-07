
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {TYPE_1__* cmd; } ;
struct imxmci_host {int pending_events; int mmc; int * data; int * cmd; int * req; int prev_cmd_code; int lock; scalar_t__ base; int imask; } ;
struct TYPE_2__ {int opcode; } ;


 int IMXMCI_INT_MASK_DEFAULT ;
 int IMXMCI_PEND_CPU_DATA_m ;
 int IMXMCI_PEND_DMA_DATA_m ;
 int IMXMCI_PEND_DMA_END_m ;
 int IMXMCI_PEND_WAIT_RESP_m ;
 scalar_t__ MMC_REG_INT_MASK ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void imxmci_finish_request(struct imxmci_host *host, struct mmc_request *req)
{
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);

 host->pending_events &= ~(IMXMCI_PEND_WAIT_RESP_m | IMXMCI_PEND_DMA_END_m |
      IMXMCI_PEND_DMA_DATA_m | IMXMCI_PEND_CPU_DATA_m);

 host->imask = IMXMCI_INT_MASK_DEFAULT;
 writew(host->imask, host->base + MMC_REG_INT_MASK);

 spin_unlock_irqrestore(&host->lock, flags);

 if (req && req->cmd)
  host->prev_cmd_code = req->cmd->opcode;

 host->req = ((void*)0);
 host->cmd = ((void*)0);
 host->data = ((void*)0);
 mmc_request_done(host->mmc, req);
}
