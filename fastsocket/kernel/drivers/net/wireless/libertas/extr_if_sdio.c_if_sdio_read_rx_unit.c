
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct if_sdio_card {int func; } ;


 int IF_SDIO_RX_UNIT ;
 scalar_t__ sdio_readb (int ,int ,int*) ;

__attribute__((used)) static u8 if_sdio_read_rx_unit(struct if_sdio_card *card)
{
 int ret;
 u8 rx_unit;

 rx_unit = sdio_readb(card->func, IF_SDIO_RX_UNIT, &ret);

 if (ret)
  rx_unit = 0;

 return rx_unit;
}
