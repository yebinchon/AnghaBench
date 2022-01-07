
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdricoh_host {int dev; } ;
struct mmc_ios {scalar_t__ power_mode; scalar_t__ bus_width; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ MMC_BUS_WIDTH_4 ;
 scalar_t__ MMC_POWER_ON ;
 scalar_t__ MMC_POWER_UP ;
 int R224_MODE ;
 int R228_POWER ;
 int dev_dbg (int ,char*) ;
 struct sdricoh_host* mmc_priv (struct mmc_host*) ;
 int sdricoh_writel (struct sdricoh_host*,int ,int) ;

__attribute__((used)) static void sdricoh_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct sdricoh_host *host = mmc_priv(mmc);
 dev_dbg(host->dev, "set_ios\n");

 if (ios->power_mode == MMC_POWER_ON) {
  sdricoh_writel(host, R228_POWER, 0xc0e0);

  if (ios->bus_width == MMC_BUS_WIDTH_4) {
   sdricoh_writel(host, R224_MODE, 0x2000300);
   sdricoh_writel(host, R228_POWER, 0x40e0);
  } else {
   sdricoh_writel(host, R224_MODE, 0x2000340);
  }

 } else if (ios->power_mode == MMC_POWER_UP) {
  sdricoh_writel(host, R224_MODE, 0x2000320);
  sdricoh_writel(host, R228_POWER, 0xe0);
 }
}
