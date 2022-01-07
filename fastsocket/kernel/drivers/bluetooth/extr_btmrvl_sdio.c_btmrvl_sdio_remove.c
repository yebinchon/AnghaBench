
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct btmrvl_sdio_card {int priv; } ;


 int BT_DBG (char*) ;
 int MODULE_SHUTDOWN_REQ ;
 int btmrvl_remove_card (int ) ;
 int btmrvl_sdio_disable_host_int (struct btmrvl_sdio_card*) ;
 int btmrvl_sdio_unregister_dev (struct btmrvl_sdio_card*) ;
 int btmrvl_send_module_cfg_cmd (int ,int ) ;
 int kfree (struct btmrvl_sdio_card*) ;
 struct btmrvl_sdio_card* sdio_get_drvdata (struct sdio_func*) ;
 scalar_t__ user_rmmod ;

__attribute__((used)) static void btmrvl_sdio_remove(struct sdio_func *func)
{
 struct btmrvl_sdio_card *card;

 if (func) {
  card = sdio_get_drvdata(func);
  if (card) {



   if (user_rmmod) {
    btmrvl_send_module_cfg_cmd(card->priv,
       MODULE_SHUTDOWN_REQ);
    btmrvl_sdio_disable_host_int(card);
   }
   BT_DBG("unregester dev");
   btmrvl_sdio_unregister_dev(card);
   btmrvl_remove_card(card->priv);
   kfree(card);
  }
 }
}
