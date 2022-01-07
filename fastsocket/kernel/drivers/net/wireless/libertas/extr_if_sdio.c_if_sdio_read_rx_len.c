
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct if_sdio_card {int model; int rx_unit; int func; } ;





 int IF_SDIO_RX_LEN ;
 int if_sdio_read_scratch (struct if_sdio_card*,int*) ;
 int sdio_readb (int ,int ,int*) ;

__attribute__((used)) static u16 if_sdio_read_rx_len(struct if_sdio_card *card, int *err)
{
 int ret;
 u16 rx_len;

 switch (card->model) {
 case 130:
 case 129:
  rx_len = if_sdio_read_scratch(card, &ret);
  break;
 case 128:
 default:
  rx_len = sdio_readb(card->func, IF_SDIO_RX_LEN, &ret);
  if (!ret)
   rx_len <<= card->rx_unit;
  else
   rx_len = 0xffff;

  break;
 }

 if (err)
  *err = ret;

 return rx_len;
}
