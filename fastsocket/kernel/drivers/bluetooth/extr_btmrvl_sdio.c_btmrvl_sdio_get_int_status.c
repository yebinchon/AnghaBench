
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct btmrvl_sdio_card {int func; } ;
struct TYPE_2__ {int tx_dnld_rdy; struct btmrvl_sdio_card* card; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;
typedef int sdio_ireg ;


 int BT_DBG (char*,int) ;
 int BT_ERR (char*) ;
 int DN_LD_HOST_INT_STATUS ;
 int EIO ;
 int HOST_INTSTATUS_REG ;
 int UP_LD_HOST_INT_STATUS ;
 int btmrvl_sdio_card_to_host (struct btmrvl_private*) ;
 int sdio_readb (int ,int ,int*) ;
 int sdio_writeb (int ,int ,int ,int*) ;

__attribute__((used)) static int btmrvl_sdio_get_int_status(struct btmrvl_private *priv, u8 * ireg)
{
 int ret;
 u8 sdio_ireg = 0;
 struct btmrvl_sdio_card *card = priv->btmrvl_dev.card;

 *ireg = 0;

 sdio_ireg = sdio_readb(card->func, HOST_INTSTATUS_REG, &ret);
 if (ret) {
  BT_ERR("sdio_readb: read int status register failed");
  ret = -EIO;
  goto done;
 }

 if (sdio_ireg != 0) {





  BT_DBG("sdio_ireg = 0x%x", sdio_ireg);

  sdio_writeb(card->func, ~(sdio_ireg) & (DN_LD_HOST_INT_STATUS |
       UP_LD_HOST_INT_STATUS),
       HOST_INTSTATUS_REG, &ret);
  if (ret) {
   BT_ERR("sdio_writeb: clear int status register "
    "failed");
   ret = -EIO;
   goto done;
  }
 }

 if (sdio_ireg & DN_LD_HOST_INT_STATUS) {
  if (priv->btmrvl_dev.tx_dnld_rdy)
   BT_DBG("tx_done already received: "
    " int_status=0x%x", sdio_ireg);
  else
   priv->btmrvl_dev.tx_dnld_rdy = 1;
 }

 if (sdio_ireg & UP_LD_HOST_INT_STATUS)
  btmrvl_sdio_card_to_host(priv);

 *ireg = sdio_ireg;

 ret = 0;

done:
 return ret;
}
