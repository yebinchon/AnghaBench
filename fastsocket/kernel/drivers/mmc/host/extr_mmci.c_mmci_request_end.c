
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmci_host {int lock; int mmc; int data_xfered; int * cmd; int * mrq; int data; scalar_t__ base; } ;
struct mmc_request {TYPE_1__* data; } ;
struct TYPE_2__ {int bytes_xfered; } ;


 int BUG_ON (int ) ;
 scalar_t__ MMCICOMMAND ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
mmci_request_end(struct mmci_host *host, struct mmc_request *mrq)
{
 writel(0, host->base + MMCICOMMAND);

 BUG_ON(host->data);

 host->mrq = ((void*)0);
 host->cmd = ((void*)0);

 if (mrq->data)
  mrq->data->bytes_xfered = host->data_xfered;





 spin_unlock(&host->lock);
 mmc_request_done(host->mmc, mrq);
 spin_lock(&host->lock);
}
