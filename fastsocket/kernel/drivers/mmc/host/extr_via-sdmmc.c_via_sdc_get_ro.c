
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct via_crdr_mmc_host {int lock; scalar_t__ sdhc_mmiobase; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ VIA_CRDR_SDSTATUS ;
 int VIA_CRDR_SDSTS_WP ;
 struct via_crdr_mmc_host* mmc_priv (struct mmc_host*) ;
 int readw (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int via_sdc_get_ro(struct mmc_host *mmc)
{
 struct via_crdr_mmc_host *host;
 unsigned long flags;
 u16 status;

 host = mmc_priv(mmc);

 spin_lock_irqsave(&host->lock, flags);

 status = readw(host->sdhc_mmiobase + VIA_CRDR_SDSTATUS);

 spin_unlock_irqrestore(&host->lock, flags);

 return !(status & VIA_CRDR_SDSTS_WP);
}
