
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxcmci_host {scalar_t__ power_mode; int clock; scalar_t__ base; int cmdat; TYPE_1__* pdata; int dma; } ;
struct mmc_ios {scalar_t__ bus_width; scalar_t__ power_mode; int clock; int vdd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int (* setpower ) (int ,int ) ;} ;


 int CMD_DAT_CONT_BUS_WIDTH_4 ;
 int CMD_DAT_CONT_INIT ;
 scalar_t__ MMC_BUS_WIDTH_4 ;
 scalar_t__ MMC_POWER_ON ;
 scalar_t__ MMC_REG_STR_STP_CLK ;
 int STR_STP_CLK_START_CLK ;
 int STR_STP_CLK_STOP_CLK ;
 int imx_dma_config_burstlen (int ,unsigned int) ;
 int mmc_dev (struct mmc_host*) ;
 struct mxcmci_host* mmc_priv (struct mmc_host*) ;
 int mxcmci_set_clk_rate (struct mxcmci_host*,int ) ;
 int stub1 (int ,int ) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void mxcmci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct mxcmci_host *host = mmc_priv(mmc);
 if (ios->bus_width == MMC_BUS_WIDTH_4)
  host->cmdat |= CMD_DAT_CONT_BUS_WIDTH_4;
 else
  host->cmdat &= ~CMD_DAT_CONT_BUS_WIDTH_4;

 if (host->power_mode != ios->power_mode) {
  if (host->pdata && host->pdata->setpower)
   host->pdata->setpower(mmc_dev(mmc), ios->vdd);
  host->power_mode = ios->power_mode;
  if (ios->power_mode == MMC_POWER_ON)
   host->cmdat |= CMD_DAT_CONT_INIT;
 }

 if (ios->clock) {
  mxcmci_set_clk_rate(host, ios->clock);
  writew(STR_STP_CLK_START_CLK, host->base + MMC_REG_STR_STP_CLK);
 } else {
  writew(STR_STP_CLK_STOP_CLK, host->base + MMC_REG_STR_STP_CLK);
 }

 host->clock = ios->clock;
}
