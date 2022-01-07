
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct btmrvl_sdio_card {int func; int ioport; } ;
struct TYPE_2__ {int tx_dnld_rdy; struct btmrvl_sdio_card* card; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;


 scalar_t__ ALIGN_ADDR (void*,int) ;
 int ALIGN_SZ (int,int) ;
 int BTSDIO_DMA_ALIGN ;
 int BT_ERR (char*,...) ;
 int DUMP_PREFIX_OFFSET ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_WRITE_IOMEM_RETRY ;
 int SDIO_BLOCK_SIZE ;
 void* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int print_hex_dump_bytes (char*,int ,int *,int) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;
 int sdio_writesb (int ,int ,int *,int) ;

__attribute__((used)) static int btmrvl_sdio_host_to_card(struct btmrvl_private *priv,
    u8 *payload, u16 nb)
{
 struct btmrvl_sdio_card *card = priv->btmrvl_dev.card;
 int ret = 0;
 int buf_block_len;
 int blksz;
 int i = 0;
 u8 *buf = ((void*)0);
 void *tmpbuf = ((void*)0);
 int tmpbufsz;

 if (!card || !card->func) {
  BT_ERR("card or function is NULL!");
  return -EINVAL;
 }

 buf = payload;
 if ((unsigned long) payload & (BTSDIO_DMA_ALIGN - 1)) {
  tmpbufsz = ALIGN_SZ(nb, BTSDIO_DMA_ALIGN);
  tmpbuf = kzalloc(tmpbufsz, GFP_KERNEL);
  if (!tmpbuf)
   return -ENOMEM;
  buf = (u8 *) ALIGN_ADDR(tmpbuf, BTSDIO_DMA_ALIGN);
  memcpy(buf, payload, nb);
 }

 blksz = SDIO_BLOCK_SIZE;
 buf_block_len = (nb + blksz - 1) / blksz;

 sdio_claim_host(card->func);

 do {

  ret = sdio_writesb(card->func, card->ioport, buf,
       buf_block_len * blksz);
  if (ret < 0) {
   i++;
   BT_ERR("i=%d writesb failed: %d", i, ret);
   print_hex_dump_bytes("", DUMP_PREFIX_OFFSET,
      payload, nb);
   ret = -EIO;
   if (i > MAX_WRITE_IOMEM_RETRY)
    goto exit;
  }
 } while (ret);

 priv->btmrvl_dev.tx_dnld_rdy = 0;

exit:
 sdio_release_host(card->func);

 return ret;
}
