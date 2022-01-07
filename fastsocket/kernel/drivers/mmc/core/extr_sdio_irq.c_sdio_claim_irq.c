
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int num; int * irq_handler; int card; } ;
typedef int sdio_irq_handler_t ;


 int BUG_ON (int) ;
 int EBUSY ;
 int SDIO_CCCR_IENx ;
 int mmc_io_rw_direct (int ,int,int ,int ,unsigned char,unsigned char*) ;
 int pr_debug (char*,int ) ;
 int sdio_card_irq_get (int ) ;
 int sdio_func_id (struct sdio_func*) ;

int sdio_claim_irq(struct sdio_func *func, sdio_irq_handler_t *handler)
{
 int ret;
 unsigned char reg;

 BUG_ON(!func);
 BUG_ON(!func->card);

 pr_debug("SDIO: Enabling IRQ for %s...\n", sdio_func_id(func));

 if (func->irq_handler) {
  pr_debug("SDIO: IRQ for %s already in use.\n", sdio_func_id(func));
  return -EBUSY;
 }

 ret = mmc_io_rw_direct(func->card, 0, 0, SDIO_CCCR_IENx, 0, &reg);
 if (ret)
  return ret;

 reg |= 1 << func->num;

 reg |= 1;

 ret = mmc_io_rw_direct(func->card, 1, 0, SDIO_CCCR_IENx, reg, ((void*)0));
 if (ret)
  return ret;

 func->irq_handler = handler;
 ret = sdio_card_irq_get(func->card);
 if (ret)
  func->irq_handler = ((void*)0);

 return ret;
}
