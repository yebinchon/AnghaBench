
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct btmrvl_sdio_card {int func; } ;


 int CARD_FW_STATUS0_REG ;
 int CARD_FW_STATUS1_REG ;
 int EIO ;
 int sdio_readb (int ,int ,int*) ;

__attribute__((used)) static int btmrvl_sdio_read_fw_status(struct btmrvl_sdio_card *card, u16 *dat)
{
 u8 fws0, fws1;
 int ret;

 *dat = 0;

 fws0 = sdio_readb(card->func, CARD_FW_STATUS0_REG, &ret);

 if (!ret)
  fws1 = sdio_readb(card->func, CARD_FW_STATUS1_REG, &ret);

 if (ret)
  return -EIO;

 *dat = (((u16) fws1) << 8) | fws0;

 return 0;
}
