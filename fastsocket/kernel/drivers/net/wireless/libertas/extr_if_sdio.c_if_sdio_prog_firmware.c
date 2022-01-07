
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct if_sdio_card {int func; } ;


 int IF_SDIO_BLOCK_SIZE ;
 scalar_t__ IF_SDIO_FIRMWARE_OK ;
 int LBS_DEB_SDIO ;
 int if_sdio_prog_helper (struct if_sdio_card*) ;
 int if_sdio_prog_real (struct if_sdio_card*) ;
 scalar_t__ if_sdio_read_scratch (struct if_sdio_card*,int*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_sdio (char*,...) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;
 int sdio_set_block_size (int ,int ) ;

__attribute__((used)) static int if_sdio_prog_firmware(struct if_sdio_card *card)
{
 int ret;
 u16 scratch;

 lbs_deb_enter(LBS_DEB_SDIO);

 sdio_claim_host(card->func);
 scratch = if_sdio_read_scratch(card, &ret);
 sdio_release_host(card->func);

 if (ret)
  goto out;

 lbs_deb_sdio("firmware status = %#x\n", scratch);

 if (scratch == IF_SDIO_FIRMWARE_OK) {
  lbs_deb_sdio("firmware already loaded\n");
  goto success;
 }

 ret = if_sdio_prog_helper(card);
 if (ret)
  goto out;

 ret = if_sdio_prog_real(card);
 if (ret)
  goto out;

success:
 sdio_claim_host(card->func);
 sdio_set_block_size(card->func, IF_SDIO_BLOCK_SIZE);
 sdio_release_host(card->func);
 ret = 0;

out:
 lbs_deb_leave_args(LBS_DEB_SDIO, "ret %d", ret);

 return ret;
}
