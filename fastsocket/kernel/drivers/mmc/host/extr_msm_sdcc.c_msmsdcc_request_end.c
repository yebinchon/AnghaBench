
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data_xfered; int * cmd; int * mrq; int data; } ;
struct msmsdcc_host {int lock; int mmc; TYPE_2__ curr; scalar_t__ base; } ;
struct mmc_request {TYPE_3__* cmd; TYPE_1__* data; } ;
struct TYPE_6__ {int error; } ;
struct TYPE_4__ {int bytes_xfered; } ;


 int BUG_ON (int ) ;
 int ETIMEDOUT ;
 scalar_t__ MMCICOMMAND ;
 int mdelay (int) ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
msmsdcc_request_end(struct msmsdcc_host *host, struct mmc_request *mrq)
{
 writel(0, host->base + MMCICOMMAND);

 BUG_ON(host->curr.data);

 host->curr.mrq = ((void*)0);
 host->curr.cmd = ((void*)0);

 if (mrq->data)
  mrq->data->bytes_xfered = host->curr.data_xfered;
 if (mrq->cmd->error == -ETIMEDOUT)
  mdelay(5);





 spin_unlock(&host->lock);
 mmc_request_done(host->mmc, mrq);
 spin_lock(&host->lock);
}
