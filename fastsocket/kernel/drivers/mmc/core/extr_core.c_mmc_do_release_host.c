
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int wq; int lock; int * claimer; scalar_t__ claimed; scalar_t__ claim_cnt; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void mmc_do_release_host(struct mmc_host *host)
{
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);
 if (--host->claim_cnt) {

  spin_unlock_irqrestore(&host->lock, flags);
 } else {
  host->claimed = 0;
  host->claimer = ((void*)0);
  spin_unlock_irqrestore(&host->lock, flags);
  wake_up(&host->wq);
 }
}
