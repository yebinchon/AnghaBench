
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_host {int quirks; int flags; int lock; struct mmc_request* mrq; int finish_tasklet; } ;
struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int error; } ;


 int ENOMEDIUM ;
 int SDHCI_CARD_PRESENT ;
 int SDHCI_DEVICE_DEAD ;
 int SDHCI_DOING_READ ;
 int SDHCI_DOING_WRITE ;
 int SDHCI_NEEDS_RETUNING ;
 int SDHCI_PRESENT_STATE ;
 int SDHCI_QUIRK_BROKEN_CARD_DETECTION ;
 int WARN_ON (int ) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int mmiowb () ;
 int sdhci_activate_led (struct sdhci_host*) ;
 int sdhci_execute_tuning (struct mmc_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_send_command (struct sdhci_host*,TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void sdhci_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct sdhci_host *host;
 bool present;
 unsigned long flags;

 host = mmc_priv(mmc);

 spin_lock_irqsave(&host->lock, flags);

 WARN_ON(host->mrq != ((void*)0));


 sdhci_activate_led(host);


 host->mrq = mrq;


 if (host->quirks & SDHCI_QUIRK_BROKEN_CARD_DETECTION)
  present = 1;
 else
  present = sdhci_readl(host, SDHCI_PRESENT_STATE) &
    SDHCI_CARD_PRESENT;

 if (!present || host->flags & SDHCI_DEVICE_DEAD) {
  host->mrq->cmd->error = -ENOMEDIUM;
  tasklet_schedule(&host->finish_tasklet);
 } else {
  u32 present_state;

  present_state = sdhci_readl(host, SDHCI_PRESENT_STATE);





  if ((host->flags & SDHCI_NEEDS_RETUNING) &&
      !(present_state & (SDHCI_DOING_WRITE | SDHCI_DOING_READ))) {
   spin_unlock_irqrestore(&host->lock, flags);
   sdhci_execute_tuning(mmc);
   spin_lock_irqsave(&host->lock, flags);


   host->mrq = mrq;
  }

  sdhci_send_command(host, mrq->cmd);
 }

 mmiowb();
 spin_unlock_irqrestore(&host->lock, flags);
}
