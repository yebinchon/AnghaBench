
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timing; int bus_width; int power_mode; int chip_select; int bus_mode; scalar_t__ vdd; scalar_t__ clock; } ;
struct mmc_host {TYPE_1__ ios; } ;


 int MMC_BUSMODE_OPENDRAIN ;
 int MMC_BUS_WIDTH_1 ;
 int MMC_CS_DONTCARE ;
 int MMC_POWER_OFF ;
 int MMC_TIMING_LEGACY ;
 int mmc_host_is_spi (struct mmc_host*) ;
 int mmc_set_ios (struct mmc_host*) ;

__attribute__((used)) static void mmc_power_off(struct mmc_host *host)
{
 host->ios.clock = 0;
 host->ios.vdd = 0;
 if (!mmc_host_is_spi(host)) {
  host->ios.bus_mode = MMC_BUSMODE_OPENDRAIN;
  host->ios.chip_select = MMC_CS_DONTCARE;
 }
 host->ios.power_mode = MMC_POWER_OFF;
 host->ios.bus_width = MMC_BUS_WIDTH_1;
 host->ios.timing = MMC_TIMING_LEGACY;
 mmc_set_ios(host);
}
