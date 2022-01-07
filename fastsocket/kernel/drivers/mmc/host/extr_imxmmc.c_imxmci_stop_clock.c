
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct imxmci_host {int mmc; scalar_t__ base; } ;


 scalar_t__ MMC_REG_STATUS ;
 scalar_t__ MMC_REG_STR_STP_CLK ;
 int STATUS_CARD_BUS_CLK_RUN ;
 int STR_STP_CLK_START_CLK ;
 int STR_STP_CLK_STOP_CLK ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;
 int readw (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void imxmci_stop_clock(struct imxmci_host *host)
{
 int i = 0;
 u16 reg;

 reg = readw(host->base + MMC_REG_STR_STP_CLK);
 writew(reg & ~STR_STP_CLK_START_CLK, host->base + MMC_REG_STR_STP_CLK);
 while (i < 0x1000) {
  if (!(i & 0x7f)) {
   reg = readw(host->base + MMC_REG_STR_STP_CLK);
   writew(reg | STR_STP_CLK_STOP_CLK,
     host->base + MMC_REG_STR_STP_CLK);
  }

  reg = readw(host->base + MMC_REG_STATUS);
  if (!(reg & STATUS_CARD_BUS_CLK_RUN)) {

   reg = readw(host->base + MMC_REG_STATUS);
   if (!(reg & STATUS_CARD_BUS_CLK_RUN))
    return;
  }

  i++;
 }
 dev_dbg(mmc_dev(host->mmc), "imxmci_stop_clock blocked, no luck\n");
}
