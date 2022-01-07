
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int sdio_irqs; int sdio_irq_thread; int sdio_irq_thread_abort; int claimed; } ;
struct mmc_card {struct mmc_host* host; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WARN_ON (int) ;
 int atomic_set (int *,int ) ;
 int kthread_run (int ,struct mmc_host*,char*,int ) ;
 int mmc_hostname (struct mmc_host*) ;
 int sdio_irq_thread ;

__attribute__((used)) static int sdio_card_irq_get(struct mmc_card *card)
{
 struct mmc_host *host = card->host;

 WARN_ON(!host->claimed);

 if (!host->sdio_irqs++) {
  atomic_set(&host->sdio_irq_thread_abort, 0);
  host->sdio_irq_thread =
   kthread_run(sdio_irq_thread, host, "ksdioirqd/%s",
    mmc_hostname(host));
  if (IS_ERR(host->sdio_irq_thread)) {
   int err = PTR_ERR(host->sdio_irq_thread);
   host->sdio_irqs--;
   return err;
  }
 }

 return 0;
}
