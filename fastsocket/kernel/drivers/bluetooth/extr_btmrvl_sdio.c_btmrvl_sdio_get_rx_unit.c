
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btmrvl_sdio_card {int rx_unit; int func; } ;


 int CARD_RX_UNIT_REG ;
 int sdio_readb (int ,int ,int*) ;

__attribute__((used)) static int btmrvl_sdio_get_rx_unit(struct btmrvl_sdio_card *card)
{
 u8 reg;
 int ret;

 reg = sdio_readb(card->func, CARD_RX_UNIT_REG, &ret);
 if (!ret)
  card->rx_unit = reg;

 return ret;
}
