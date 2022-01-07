
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int caps; } ;


 int MMC_CAP_SET_XPC_180 ;
 int MMC_CAP_SET_XPC_300 ;
 int MMC_CAP_SET_XPC_330 ;
 int MMC_CAP_UHS_DDR50 ;
 int MMC_CAP_UHS_SDR104 ;
 int MMC_CAP_UHS_SDR12 ;
 int MMC_CAP_UHS_SDR25 ;
 int MMC_CAP_UHS_SDR50 ;
 int MMC_SIGNAL_VOLTAGE_180 ;
 int SD_OCR_CCS ;
 int SD_OCR_S18R ;
 int SD_OCR_XPC ;
 int mmc_all_send_cid (struct mmc_host*,int*) ;
 int mmc_go_idle (struct mmc_host*) ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_send_app_op_cond (struct mmc_host*,int,int*) ;
 int mmc_send_cid (struct mmc_host*,int*) ;
 int mmc_send_if_cond (struct mmc_host*,int) ;
 int mmc_set_signal_voltage (struct mmc_host*,int ) ;

int mmc_sd_get_cid(struct mmc_host *host, u32 ocr, u32 *cid, u32 *rocr)
{
 int err;







 mmc_go_idle(host);







 err = mmc_send_if_cond(host, ocr);
 if (!err)
  ocr |= SD_OCR_CCS;





 if (host->caps & (MMC_CAP_UHS_SDR12 | MMC_CAP_UHS_SDR25 |
     MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR104 | MMC_CAP_UHS_DDR50))
  ocr |= SD_OCR_S18R;


 if (host->caps & (MMC_CAP_SET_XPC_330 | MMC_CAP_SET_XPC_300 |
     MMC_CAP_SET_XPC_180))
  ocr |= SD_OCR_XPC;

try_again:
 err = mmc_send_app_op_cond(host, ocr, rocr);
 if (err)
  return err;





 if (!mmc_host_is_spi(host) && rocr &&
    ((*rocr & 0x41000000) == 0x41000000)) {
  err = mmc_set_signal_voltage(host, MMC_SIGNAL_VOLTAGE_180);
  if (err) {
   ocr &= ~SD_OCR_S18R;
   goto try_again;
  }
 }

 if (mmc_host_is_spi(host))
  err = mmc_send_cid(host, cid);
 else
  err = mmc_all_send_cid(host, cid);

 return err;
}
