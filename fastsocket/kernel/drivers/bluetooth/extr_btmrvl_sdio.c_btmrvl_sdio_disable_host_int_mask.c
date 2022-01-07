
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btmrvl_sdio_card {int func; } ;


 int BT_ERR (char*) ;
 int EIO ;
 int HOST_INT_MASK_REG ;
 int sdio_readb (int ,int ,int*) ;
 int sdio_writeb (int ,int ,int ,int*) ;

__attribute__((used)) static int btmrvl_sdio_disable_host_int_mask(struct btmrvl_sdio_card *card,
        u8 mask)
{
 u8 host_int_mask;
 int ret;

 host_int_mask = sdio_readb(card->func, HOST_INT_MASK_REG, &ret);
 if (ret)
  return -EIO;

 host_int_mask &= ~mask;

 sdio_writeb(card->func, host_int_mask, HOST_INT_MASK_REG, &ret);
 if (ret < 0) {
  BT_ERR("Unable to disable the host interrupt!");
  return -EIO;
 }

 return 0;
}
