
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_crdr_mmc_host {int mmc; int lock; int * data; int * cmd; struct mmc_request* mrq; int timer; } ;
struct mmc_request {int dummy; } ;


 int del_timer (int *) ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void via_sdc_tasklet_finish(unsigned long param)
{
 struct via_crdr_mmc_host *host;
 unsigned long flags;
 struct mmc_request *mrq;

 host = (struct via_crdr_mmc_host *)param;

 spin_lock_irqsave(&host->lock, flags);

 del_timer(&host->timer);
 mrq = host->mrq;
 host->mrq = ((void*)0);
 host->cmd = ((void*)0);
 host->data = ((void*)0);

 spin_unlock_irqrestore(&host->lock, flags);

 mmc_request_done(host->mmc, mrq);
}
