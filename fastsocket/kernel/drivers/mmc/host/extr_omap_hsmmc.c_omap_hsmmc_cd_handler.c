
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int mmc_carddetect_work; scalar_t__ suspended; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t omap_hsmmc_cd_handler(int irq, void *dev_id)
{
 struct omap_hsmmc_host *host = (struct omap_hsmmc_host *)dev_id;

 if (host->suspended)
  return IRQ_HANDLED;
 schedule_work(&host->mmc_carddetect_work);

 return IRQ_HANDLED;
}
