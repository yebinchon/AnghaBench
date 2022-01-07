
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vdd; int clock; int power_mode; int timing; int bus_width; int bus_mode; int chip_select; } ;
struct mmc_host {int f_min; TYPE_1__ ios; int ocr_avail; scalar_t__ ocr; } ;


 int MMC_BUSMODE_OPENDRAIN ;
 int MMC_BUSMODE_PUSHPULL ;
 int MMC_BUS_WIDTH_1 ;
 int MMC_CS_DONTCARE ;
 int MMC_CS_HIGH ;
 int MMC_POWER_ON ;
 int MMC_POWER_UP ;
 int MMC_TIMING_LEGACY ;
 int ffs (scalar_t__) ;
 int fls (int ) ;
 int mmc_delay (int) ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_set_ios (struct mmc_host*) ;
 int pr_warning (char*,int ) ;

__attribute__((used)) static void mmc_power_up(struct mmc_host *host)
{
 int bit;


 if (host->ocr)
  bit = ffs(host->ocr) - 1;
 else
  bit = fls(host->ocr_avail) - 1;

 host->ios.vdd = bit;
 if (mmc_host_is_spi(host)) {
  host->ios.chip_select = MMC_CS_HIGH;
  host->ios.bus_mode = MMC_BUSMODE_PUSHPULL;
 } else {
  host->ios.chip_select = MMC_CS_DONTCARE;
  host->ios.bus_mode = MMC_BUSMODE_OPENDRAIN;
 }
 host->ios.power_mode = MMC_POWER_UP;
 host->ios.bus_width = MMC_BUS_WIDTH_1;
 host->ios.timing = MMC_TIMING_LEGACY;
 mmc_set_ios(host);





 mmc_delay(10);

 if (host->f_min > 400000) {
  pr_warning("%s: Minimum clock frequency too high for "
    "identification mode\n", mmc_hostname(host));
  host->ios.clock = host->f_min;
 } else
  host->ios.clock = 400000;

 host->ios.power_mode = MMC_POWER_ON;
 mmc_set_ios(host);





 mmc_delay(10);
}
