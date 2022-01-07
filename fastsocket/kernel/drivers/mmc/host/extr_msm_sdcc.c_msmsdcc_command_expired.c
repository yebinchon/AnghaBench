
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * cmd; struct mmc_request* mrq; } ;
struct TYPE_4__ {int sg; } ;
struct msmsdcc_host {int mmc; int lock; TYPE_2__ curr; scalar_t__ base; TYPE_1__ dma; } ;
struct mmc_request {TYPE_3__* cmd; int data; } ;
struct TYPE_6__ {int error; } ;


 int ETIMEDOUT ;
 scalar_t__ MMCICOMMAND ;
 int mmc_hostname (int ) ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int msmsdcc_stop_data (struct msmsdcc_host*) ;
 int pr_err (char*,int ,struct mmc_request*,TYPE_3__*,int ,int ) ;
 int pr_info (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
msmsdcc_command_expired(unsigned long _data)
{
 struct msmsdcc_host *host = (struct msmsdcc_host *) _data;
 struct mmc_request *mrq;
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);
 mrq = host->curr.mrq;

 if (!mrq) {
  pr_info("%s: Command expiry misfire\n",
   mmc_hostname(host->mmc));
  spin_unlock_irqrestore(&host->lock, flags);
  return;
 }

 pr_err("%s: Command timeout (%p %p %p %p)\n",
        mmc_hostname(host->mmc), mrq, mrq->cmd,
        mrq->data, host->dma.sg);

 mrq->cmd->error = -ETIMEDOUT;
 msmsdcc_stop_data(host);

 writel(0, host->base + MMCICOMMAND);

 host->curr.mrq = ((void*)0);
 host->curr.cmd = ((void*)0);

 spin_unlock_irqrestore(&host->lock, flags);
 mmc_request_done(host->mmc, mrq);
}
