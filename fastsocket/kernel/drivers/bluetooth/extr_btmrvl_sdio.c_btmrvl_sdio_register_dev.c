
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdio_func {int num; } ;
struct btmrvl_sdio_card {int ioport; struct sdio_func* func; } ;


 int BT_DBG (char*,int ,int) ;
 int BT_ERR (char*,...) ;
 int EINVAL ;
 int EIO ;
 int IO_PORT_0_REG ;
 int IO_PORT_1_REG ;
 int IO_PORT_2_REG ;
 int SDIO_BLOCK_SIZE ;
 int btmrvl_sdio_interrupt ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_claim_irq (struct sdio_func*,int ) ;
 int sdio_disable_func (struct sdio_func*) ;
 int sdio_enable_func (struct sdio_func*) ;
 int sdio_readb (struct sdio_func*,int ,int*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;
 int sdio_set_block_size (struct sdio_func*,int ) ;
 int sdio_set_drvdata (struct sdio_func*,struct btmrvl_sdio_card*) ;

__attribute__((used)) static int btmrvl_sdio_register_dev(struct btmrvl_sdio_card *card)
{
 struct sdio_func *func;
 u8 reg;
 int ret = 0;

 if (!card || !card->func) {
  BT_ERR("Error: card or function is NULL!");
  ret = -EINVAL;
  goto failed;
 }

 func = card->func;

 sdio_claim_host(func);

 ret = sdio_enable_func(func);
 if (ret) {
  BT_ERR("sdio_enable_func() failed: ret=%d", ret);
  ret = -EIO;
  goto release_host;
 }

 ret = sdio_claim_irq(func, btmrvl_sdio_interrupt);
 if (ret) {
  BT_ERR("sdio_claim_irq failed: ret=%d", ret);
  ret = -EIO;
  goto disable_func;
 }

 ret = sdio_set_block_size(card->func, SDIO_BLOCK_SIZE);
 if (ret) {
  BT_ERR("cannot set SDIO block size");
  ret = -EIO;
  goto release_irq;
 }

 reg = sdio_readb(func, IO_PORT_0_REG, &ret);
 if (ret < 0) {
  ret = -EIO;
  goto release_irq;
 }

 card->ioport = reg;

 reg = sdio_readb(func, IO_PORT_1_REG, &ret);
 if (ret < 0) {
  ret = -EIO;
  goto release_irq;
 }

 card->ioport |= (reg << 8);

 reg = sdio_readb(func, IO_PORT_2_REG, &ret);
 if (ret < 0) {
  ret = -EIO;
  goto release_irq;
 }

 card->ioport |= (reg << 16);

 BT_DBG("SDIO FUNC%d IO port: 0x%x", func->num, card->ioport);

 sdio_set_drvdata(func, card);

 sdio_release_host(func);

 return 0;

release_irq:
 sdio_release_irq(func);

disable_func:
 sdio_disable_func(func);

release_host:
 sdio_release_host(func);

failed:
 return ret;
}
