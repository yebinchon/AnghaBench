
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int dummy; } ;
struct mmc_omap_slot {struct mmc_request* mrq; struct mmc_omap_host* host; } ;
struct mmc_omap_host {int slot_lock; struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;


 int BUG_ON (int ) ;
 int mmc_omap_select_slot (struct mmc_omap_slot*,int) ;
 int mmc_omap_start_request (struct mmc_omap_host*,struct mmc_request*) ;
 struct mmc_omap_slot* mmc_priv (struct mmc_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mmc_omap_request(struct mmc_host *mmc, struct mmc_request *req)
{
 struct mmc_omap_slot *slot = mmc_priv(mmc);
 struct mmc_omap_host *host = slot->host;
 unsigned long flags;

 spin_lock_irqsave(&host->slot_lock, flags);
 if (host->mmc != ((void*)0)) {
  BUG_ON(slot->mrq != ((void*)0));
  slot->mrq = req;
  spin_unlock_irqrestore(&host->slot_lock, flags);
  return;
 } else
  host->mmc = mmc;
 spin_unlock_irqrestore(&host->slot_lock, flags);
 mmc_omap_select_slot(slot, 1);
 mmc_omap_start_request(host, req);
}
