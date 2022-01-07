
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdio_func {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btmrvl_sdio_card {struct btmrvl_private* priv; } ;
struct TYPE_2__ {struct hci_dev* hcidev; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;


 int BT_DBG (char*,int ) ;
 int BT_ERR (char*) ;
 int btmrvl_interrupt (struct btmrvl_private*) ;
 scalar_t__ btmrvl_sdio_get_int_status (struct btmrvl_private*,int *) ;
 struct btmrvl_sdio_card* sdio_get_drvdata (struct sdio_func*) ;

__attribute__((used)) static void btmrvl_sdio_interrupt(struct sdio_func *func)
{
 struct btmrvl_private *priv;
 struct hci_dev *hcidev;
 struct btmrvl_sdio_card *card;
 u8 ireg = 0;

 card = sdio_get_drvdata(func);
 if (card && card->priv) {
  priv = card->priv;
  hcidev = priv->btmrvl_dev.hcidev;

  if (btmrvl_sdio_get_int_status(priv, &ireg))
   BT_ERR("reading HOST_INT_STATUS_REG failed");
  else
   BT_DBG("HOST_INT_STATUS_REG %#x", ireg);

  btmrvl_interrupt(priv);
 }
}
