
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int sdio_irqs; int sdio_irq_thread; int sdio_irq_thread_abort; int claimed; } ;
struct mmc_card {struct mmc_host* host; } ;


 int BUG_ON (int) ;
 int WARN_ON (int) ;
 int atomic_set (int *,int) ;
 int kthread_stop (int ) ;

__attribute__((used)) static int sdio_card_irq_put(struct mmc_card *card)
{
 struct mmc_host *host = card->host;

 WARN_ON(!host->claimed);
 BUG_ON(host->sdio_irqs < 1);

 if (!--host->sdio_irqs) {
  atomic_set(&host->sdio_irq_thread_abort, 1);
  kthread_stop(host->sdio_irq_thread);
 }

 return 0;
}
