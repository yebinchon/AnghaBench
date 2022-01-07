
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sdhci_host {int flags; int quirks; unsigned int clock; int mmc; int lock; int * data; int * cmd; struct mmc_request* mrq; int timer; } ;
struct mmc_request {TYPE_3__* data; TYPE_1__* cmd; } ;
struct TYPE_6__ {TYPE_2__* stop; scalar_t__ error; } ;
struct TYPE_5__ {scalar_t__ error; } ;
struct TYPE_4__ {scalar_t__ error; } ;


 int SDHCI_DEVICE_DEAD ;
 int SDHCI_QUIRK_CLOCK_BEFORE_RESET ;
 int SDHCI_QUIRK_RESET_AFTER_REQUEST ;
 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int del_timer (int *) ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int mmiowb () ;
 int sdhci_deactivate_led (struct sdhci_host*) ;
 int sdhci_reset (struct sdhci_host*,int ) ;
 int sdhci_set_clock (struct sdhci_host*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sdhci_tasklet_finish(unsigned long param)
{
 struct sdhci_host *host;
 unsigned long flags;
 struct mmc_request *mrq;

 host = (struct sdhci_host*)param;

 spin_lock_irqsave(&host->lock, flags);

 del_timer(&host->timer);

 mrq = host->mrq;





 if (!(host->flags & SDHCI_DEVICE_DEAD) &&
  (mrq->cmd->error ||
   (mrq->data && (mrq->data->error ||
    (mrq->data->stop && mrq->data->stop->error))) ||
     (host->quirks & SDHCI_QUIRK_RESET_AFTER_REQUEST))) {


  if (host->quirks & SDHCI_QUIRK_CLOCK_BEFORE_RESET) {
   unsigned int clock;


   clock = host->clock;
   host->clock = 0;
   sdhci_set_clock(host, clock);
  }



  sdhci_reset(host, SDHCI_RESET_CMD);
  sdhci_reset(host, SDHCI_RESET_DATA);
 }

 host->mrq = ((void*)0);
 host->cmd = ((void*)0);
 host->data = ((void*)0);


 sdhci_deactivate_led(host);


 mmiowb();
 spin_unlock_irqrestore(&host->lock, flags);

 mmc_request_done(host->mmc, mrq);
}
