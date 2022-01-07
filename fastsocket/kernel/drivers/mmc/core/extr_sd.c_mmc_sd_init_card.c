
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mmc_host {int caps; struct mmc_card* card; TYPE_1__* ops; int claimed; } ;
struct TYPE_4__ {int bus_widths; } ;
struct mmc_card {TYPE_2__ scr; int rca; int raw_cid; int type; } ;
typedef int cid ;
struct TYPE_3__ {int (* enable_preset_value ) (struct mmc_host*,int) ;} ;


 int BUG_ON (int) ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct mmc_card*) ;
 int MMC_BUSMODE_PUSHPULL ;
 int MMC_BUS_WIDTH_4 ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_TYPE_SD ;
 int PTR_ERR (struct mmc_card*) ;
 int SD_ROCR_S18A ;
 int SD_SCR_BUS_WIDTH_4 ;
 int WARN_ON (int) ;
 scalar_t__ memcmp (int*,int ,int) ;
 int memcpy (int ,int*,int) ;
 struct mmc_card* mmc_alloc_card (struct mmc_host*,int *) ;
 int mmc_app_set_bus_width (struct mmc_card*,int ) ;
 int mmc_decode_cid (struct mmc_card*) ;
 int mmc_host_is_spi (struct mmc_host*) ;
 int mmc_remove_card (struct mmc_card*) ;
 int mmc_sd_card_set_uhs (struct mmc_card*) ;
 int mmc_sd_get_cid (struct mmc_host*,int,int*,int*) ;
 int mmc_sd_get_csd (struct mmc_host*,struct mmc_card*) ;
 int mmc_sd_get_max_clock (struct mmc_card*) ;
 int mmc_sd_go_highspeed (struct mmc_card*) ;
 int mmc_sd_init_uhs_card (struct mmc_card*) ;
 int mmc_sd_setup_card (struct mmc_host*,struct mmc_card*,int ) ;
 int mmc_sd_switch_hs (struct mmc_card*) ;
 int mmc_select_card (struct mmc_card*) ;
 int mmc_send_relative_addr (struct mmc_host*,int *) ;
 int mmc_set_bus_mode (struct mmc_host*,int ) ;
 int mmc_set_bus_width (struct mmc_host*,int ) ;
 int mmc_set_clock (struct mmc_host*,int ) ;
 int sd_type ;
 int stub1 (struct mmc_host*,int) ;

__attribute__((used)) static int mmc_sd_init_card(struct mmc_host *host, u32 ocr,
 struct mmc_card *oldcard)
{
 struct mmc_card *card;
 int err;
 u32 cid[4];
 u32 rocr = 0;

 BUG_ON(!host);
 WARN_ON(!host->claimed);

 err = mmc_sd_get_cid(host, ocr, cid, &rocr);
 if (err)
  return err;

 if (oldcard) {
  if (memcmp(cid, oldcard->raw_cid, sizeof(cid)) != 0)
   return -ENOENT;

  card = oldcard;
 } else {



  card = mmc_alloc_card(host, &sd_type);
  if (IS_ERR(card))
   return PTR_ERR(card);

  card->type = MMC_TYPE_SD;
  memcpy(card->raw_cid, cid, sizeof(card->raw_cid));
 }




 if (!mmc_host_is_spi(host)) {
  err = mmc_send_relative_addr(host, &card->rca);
  if (err)
   return err;

  mmc_set_bus_mode(host, MMC_BUSMODE_PUSHPULL);
 }

 if (!oldcard) {
  err = mmc_sd_get_csd(host, card);
  if (err)
   return err;

  mmc_decode_cid(card);
 }




 if (!mmc_host_is_spi(host)) {
  err = mmc_select_card(card);
  if (err)
   return err;
 }

 err = mmc_sd_setup_card(host, card, oldcard != ((void*)0));
 if (err)
  goto free_card;


 if (rocr & SD_ROCR_S18A) {
  err = mmc_sd_init_uhs_card(card);
  if (err)
   goto free_card;


  mmc_sd_card_set_uhs(card);





  if (host->ops->enable_preset_value)
   host->ops->enable_preset_value(host, 1);
 } else {



  err = mmc_sd_switch_hs(card);
  if (err > 0)
   mmc_sd_go_highspeed(card);
  else if (err)
   goto free_card;




  mmc_set_clock(host, mmc_sd_get_max_clock(card));




  if ((host->caps & MMC_CAP_4_BIT_DATA) &&
   (card->scr.bus_widths & SD_SCR_BUS_WIDTH_4)) {
   err = mmc_app_set_bus_width(card, MMC_BUS_WIDTH_4);
   if (err)
    goto free_card;

   mmc_set_bus_width(host, MMC_BUS_WIDTH_4);
  }
 }

 host->card = card;
 return 0;

free_card:
 if (!oldcard)
  mmc_remove_card(card);

 return err;
}
