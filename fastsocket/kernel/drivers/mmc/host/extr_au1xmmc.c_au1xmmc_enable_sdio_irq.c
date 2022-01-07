
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct au1xmmc_host {int dummy; } ;


 int IRQ_OFF (struct au1xmmc_host*,int ) ;
 int IRQ_ON (struct au1xmmc_host*,int ) ;
 int SD_CONFIG_SI ;
 struct au1xmmc_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void au1xmmc_enable_sdio_irq(struct mmc_host *mmc, int en)
{
 struct au1xmmc_host *host = mmc_priv(mmc);

 if (en)
  IRQ_ON(host, SD_CONFIG_SI);
 else
  IRQ_OFF(host, SD_CONFIG_SI);
}
