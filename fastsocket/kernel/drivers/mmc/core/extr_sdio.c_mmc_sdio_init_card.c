
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mmc_host {int ocr; struct mmc_card* card; int claimed; } ;
struct TYPE_4__ {int * type; } ;
struct TYPE_3__ {scalar_t__ vendor; scalar_t__ device; } ;
struct mmc_card {scalar_t__ type; int host; TYPE_2__ dev; TYPE_1__ cis; int rca; int raw_cid; } ;


 int BUG_ON (int) ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct mmc_card*) ;
 int MMC_BUSMODE_PUSHPULL ;
 int MMC_BUS_WIDTH_4 ;
 scalar_t__ MMC_TYPE_SDIO ;
 scalar_t__ MMC_TYPE_SD_COMBO ;
 int PTR_ERR (struct mmc_card*) ;
 int WARN_ON (int) ;
 scalar_t__ memcmp (int ,int ,int) ;
 struct mmc_card* mmc_alloc_card (struct mmc_host*,int *) ;
 int mmc_decode_cid (struct mmc_card*) ;
 int mmc_go_idle (struct mmc_host*) ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_remove_card (struct mmc_card*) ;
 int mmc_sd_get_cid (struct mmc_host*,int,int ,int *) ;
 int mmc_sd_get_csd (struct mmc_host*,struct mmc_card*) ;
 int mmc_sd_go_highspeed (struct mmc_card*) ;
 int mmc_sd_setup_card (struct mmc_host*,struct mmc_card*,int ) ;
 int mmc_sdio_get_max_clock (struct mmc_card*) ;
 int mmc_select_card (struct mmc_card*) ;
 int mmc_send_io_op_cond (struct mmc_host*,int,int*) ;
 int mmc_send_relative_addr (struct mmc_host*,int *) ;
 int mmc_set_bus_mode (struct mmc_host*,int ) ;
 int mmc_set_bus_width (int ,int ) ;
 int mmc_set_clock (struct mmc_host*,int ) ;
 int mmc_spi_set_crc (struct mmc_host*,int ) ;
 int sd_type ;
 int sdio_disable_cd (struct mmc_card*) ;
 int sdio_enable_4bit_bus (struct mmc_card*) ;
 int sdio_enable_hs (struct mmc_card*) ;
 int sdio_read_cccr (struct mmc_card*) ;
 int sdio_read_common_cis (struct mmc_card*) ;
 int use_spi_crc ;

__attribute__((used)) static int mmc_sdio_init_card(struct mmc_host *host, u32 ocr,
         struct mmc_card *oldcard)
{
 struct mmc_card *card;
 int err;

 BUG_ON(!host);
 WARN_ON(!host->claimed);




 err = mmc_send_io_op_cond(host, host->ocr, &ocr);
 if (err)
  goto err;




 if (mmc_host_is_spi(host)) {
  err = mmc_spi_set_crc(host, use_spi_crc);
  if (err)
   goto err;
 }




 card = mmc_alloc_card(host, ((void*)0));
 if (IS_ERR(card)) {
  err = PTR_ERR(card);
  goto err;
 }

 err = mmc_sd_get_cid(host, host->ocr & ocr, card->raw_cid, ((void*)0));

 if (!err) {
  card->type = MMC_TYPE_SD_COMBO;

  if (oldcard && (oldcard->type != MMC_TYPE_SD_COMBO ||
      memcmp(card->raw_cid, oldcard->raw_cid, sizeof(card->raw_cid)) != 0)) {
   mmc_remove_card(card);
   return -ENOENT;
  }
 } else {
  card->type = MMC_TYPE_SDIO;

  if (oldcard && oldcard->type != MMC_TYPE_SDIO) {
   mmc_remove_card(card);
   return -ENOENT;
  }
 }




 if (!mmc_host_is_spi(host)) {
  err = mmc_send_relative_addr(host, &card->rca);
  if (err)
   goto remove;

  mmc_set_bus_mode(host, MMC_BUSMODE_PUSHPULL);
 }




 if (!oldcard && card->type == MMC_TYPE_SD_COMBO) {
  err = mmc_sd_get_csd(host, card);
  if (err)
   return err;

  mmc_decode_cid(card);
 }




 if (!mmc_host_is_spi(host)) {
  err = mmc_select_card(card);
  if (err)
   goto remove;
 }




 err = sdio_read_cccr(card);
 if (err)
  goto remove;




 err = sdio_read_common_cis(card);
 if (err)
  goto remove;

 if (oldcard) {
  int same = (card->cis.vendor == oldcard->cis.vendor &&
       card->cis.device == oldcard->cis.device);
  mmc_remove_card(card);
  if (!same)
   return -ENOENT;

  card = oldcard;
  return 0;
 }

 if (card->type == MMC_TYPE_SD_COMBO) {
  err = mmc_sd_setup_card(host, card, oldcard != ((void*)0));

  if (err) {
   mmc_go_idle(host);
   if (mmc_host_is_spi(host))

    mmc_spi_set_crc(host, use_spi_crc);
   card->type = MMC_TYPE_SDIO;
  } else
   card->dev.type = &sd_type;
 }




 err = sdio_disable_cd(card);
 if (err)
  goto remove;




 err = sdio_enable_hs(card);
 if (err > 0)
  mmc_sd_go_highspeed(card);
 else if (err)
  goto remove;




 mmc_set_clock(host, mmc_sdio_get_max_clock(card));




 err = sdio_enable_4bit_bus(card);
 if (err > 0)
  mmc_set_bus_width(card->host, MMC_BUS_WIDTH_4);
 else if (err)
  goto remove;

 if (!oldcard)
  host->card = card;
 return 0;

remove:
 if (!oldcard)
  mmc_remove_card(card);

err:
 return err;
}
