
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btmrvl_sdio_card {int func; } ;


 int BT_ERR (char*,int) ;
 int CARD_STATUS_REG ;
 int ETIMEDOUT ;
 int MAX_POLL_TRIES ;
 int sdio_readb (int ,int ,int*) ;
 int udelay (int) ;

__attribute__((used)) static int btmrvl_sdio_poll_card_status(struct btmrvl_sdio_card *card, u8 bits)
{
 unsigned int tries;
 u8 status;
 int ret;

 for (tries = 0; tries < MAX_POLL_TRIES * 1000; tries++) {
  status = sdio_readb(card->func, CARD_STATUS_REG, &ret);
  if (ret)
   goto failed;
  if ((status & bits) == bits)
   return ret;

  udelay(1);
 }

 ret = -ETIMEDOUT;

failed:
 BT_ERR("FAILED! ret=%d", ret);

 return ret;
}
