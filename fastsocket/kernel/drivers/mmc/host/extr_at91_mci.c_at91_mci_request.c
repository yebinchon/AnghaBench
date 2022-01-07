
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int dummy; } ;
struct mmc_host {int dummy; } ;
struct at91mci_host {int timer; scalar_t__ flags; struct mmc_request* request; } ;


 scalar_t__ HZ ;
 int at91_mci_process_next (struct at91mci_host*) ;
 scalar_t__ jiffies ;
 struct at91mci_host* mmc_priv (struct mmc_host*) ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void at91_mci_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct at91mci_host *host = mmc_priv(mmc);
 host->request = mrq;
 host->flags = 0;

 mod_timer(&host->timer, jiffies + HZ);

 at91_mci_process_next(host);
}
