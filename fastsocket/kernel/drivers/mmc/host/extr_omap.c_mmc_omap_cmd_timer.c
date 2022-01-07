
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_omap_host {int abort; int slot_lock; int cmd_abort_work; int irq; int * cmd; } ;


 int IE ;
 int OMAP_MMC_WRITE (struct mmc_omap_host*,int ,int ) ;
 int disable_irq (int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
mmc_omap_cmd_timer(unsigned long data)
{
 struct mmc_omap_host *host = (struct mmc_omap_host *) data;
 unsigned long flags;

 spin_lock_irqsave(&host->slot_lock, flags);
 if (host->cmd != ((void*)0) && !host->abort) {
  OMAP_MMC_WRITE(host, IE, 0);
  disable_irq(host->irq);
  host->abort = 1;
  schedule_work(&host->cmd_abort_work);
 }
 spin_unlock_irqrestore(&host->slot_lock, flags);
}
