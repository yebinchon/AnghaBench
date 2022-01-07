
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_omap_slot {int * mmc; int * mrq; struct mmc_omap_host* host; } ;
struct mmc_omap_host {int nr_slots; int slot_lock; int slot_wq; int * mmc; int slot_release_work; struct mmc_omap_slot* next_slot; struct mmc_omap_slot* current_slot; struct mmc_omap_slot** slots; int clk_timer; } ;


 int BUG_ON (int) ;
 int HZ ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mmc_omap_fclk_enable (struct mmc_omap_host*,int ) ;
 int mmc_omap_fclk_offdelay (struct mmc_omap_slot*) ;
 int mod_timer (int *,scalar_t__) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void mmc_omap_release_slot(struct mmc_omap_slot *slot, int clk_enabled)
{
 struct mmc_omap_host *host = slot->host;
 unsigned long flags;
 int i;

 BUG_ON(slot == ((void*)0) || host->mmc == ((void*)0));

 if (clk_enabled)

  mod_timer(&host->clk_timer, jiffies + HZ/10);
 else {
  del_timer(&host->clk_timer);
  mmc_omap_fclk_offdelay(slot);
  mmc_omap_fclk_enable(host, 0);
 }

 spin_lock_irqsave(&host->slot_lock, flags);

 for (i = 0; i < host->nr_slots; i++) {
  struct mmc_omap_slot *new_slot;

  if (host->slots[i] == ((void*)0) || host->slots[i]->mrq == ((void*)0))
   continue;

  BUG_ON(host->next_slot != ((void*)0));
  new_slot = host->slots[i];

  BUG_ON(new_slot == host->current_slot);

  host->next_slot = new_slot;
  host->mmc = new_slot->mmc;
  spin_unlock_irqrestore(&host->slot_lock, flags);
  schedule_work(&host->slot_release_work);
  return;
 }

 host->mmc = ((void*)0);
 wake_up(&host->slot_wq);
 spin_unlock_irqrestore(&host->slot_lock, flags);
}
