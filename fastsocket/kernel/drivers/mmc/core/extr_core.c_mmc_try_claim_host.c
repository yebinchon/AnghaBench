
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int claimed; scalar_t__ claimer; int claim_cnt; int lock; } ;


 scalar_t__ current ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mmc_try_claim_host(struct mmc_host *host)
{
 int claimed_host = 0;
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);
 if (!host->claimed || host->claimer == current) {
  host->claimed = 1;
  host->claimer = current;
  host->claim_cnt += 1;
  claimed_host = 1;
 }
 spin_unlock_irqrestore(&host->lock, flags);
 return claimed_host;
}
