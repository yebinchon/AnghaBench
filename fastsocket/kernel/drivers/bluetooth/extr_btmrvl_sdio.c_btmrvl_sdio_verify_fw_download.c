
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct btmrvl_sdio_card {int dummy; } ;


 int ETIMEDOUT ;
 scalar_t__ FIRMWARE_READY ;
 scalar_t__ btmrvl_sdio_read_fw_status (struct btmrvl_sdio_card*,scalar_t__*) ;
 int msleep (int) ;

__attribute__((used)) static int btmrvl_sdio_verify_fw_download(struct btmrvl_sdio_card *card,
        int pollnum)
{
 int ret = -ETIMEDOUT;
 u16 firmwarestat;
 unsigned int tries;


 for (tries = 0; tries < pollnum; tries++) {
  if (btmrvl_sdio_read_fw_status(card, &firmwarestat) < 0)
   continue;

  if (firmwarestat == FIRMWARE_READY) {
   ret = 0;
   break;
  } else {
   msleep(10);
  }
 }

 return ret;
}
