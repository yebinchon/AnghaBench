
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sd3_bus_mode; } ;
struct mmc_card {scalar_t__ sd_bus_speed; TYPE_2__ sw_caps; TYPE_1__* host; } ;
struct TYPE_3__ {int caps; } ;


 int MMC_CAP_UHS_DDR50 ;
 int MMC_CAP_UHS_SDR104 ;
 int MMC_CAP_UHS_SDR12 ;
 int MMC_CAP_UHS_SDR25 ;
 int MMC_CAP_UHS_SDR50 ;
 int SD_MODE_UHS_DDR50 ;
 int SD_MODE_UHS_SDR104 ;
 int SD_MODE_UHS_SDR12 ;
 int SD_MODE_UHS_SDR25 ;
 int SD_MODE_UHS_SDR50 ;
 scalar_t__ UHS_DDR50_BUS_SPEED ;
 scalar_t__ UHS_SDR104_BUS_SPEED ;
 scalar_t__ UHS_SDR12_BUS_SPEED ;
 scalar_t__ UHS_SDR25_BUS_SPEED ;
 scalar_t__ UHS_SDR50_BUS_SPEED ;

__attribute__((used)) static void sd_update_bus_speed_mode(struct mmc_card *card)
{




 if (!(card->host->caps & (MMC_CAP_UHS_SDR12 | MMC_CAP_UHS_SDR25 |
     MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR104 | MMC_CAP_UHS_DDR50))) {
  card->sd_bus_speed = 0;
  return;
 }

 if ((card->host->caps & MMC_CAP_UHS_SDR104) &&
     (card->sw_caps.sd3_bus_mode & SD_MODE_UHS_SDR104)) {
   card->sd_bus_speed = UHS_SDR104_BUS_SPEED;
 } else if ((card->host->caps & MMC_CAP_UHS_DDR50) &&
     (card->sw_caps.sd3_bus_mode & SD_MODE_UHS_DDR50)) {
   card->sd_bus_speed = UHS_DDR50_BUS_SPEED;
 } else if ((card->host->caps & (MMC_CAP_UHS_SDR104 |
      MMC_CAP_UHS_SDR50)) && (card->sw_caps.sd3_bus_mode &
      SD_MODE_UHS_SDR50)) {
   card->sd_bus_speed = UHS_SDR50_BUS_SPEED;
 } else if ((card->host->caps & (MMC_CAP_UHS_SDR104 |
      MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR25)) &&
     (card->sw_caps.sd3_bus_mode & SD_MODE_UHS_SDR25)) {
   card->sd_bus_speed = UHS_SDR25_BUS_SPEED;
 } else if ((card->host->caps & (MMC_CAP_UHS_SDR104 |
      MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR25 |
      MMC_CAP_UHS_SDR12)) && (card->sw_caps.sd3_bus_mode &
      SD_MODE_UHS_SDR12)) {
   card->sd_bus_speed = UHS_SDR12_BUS_SPEED;
 }
}
