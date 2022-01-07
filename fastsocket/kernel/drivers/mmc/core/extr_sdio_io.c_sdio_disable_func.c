
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int num; int card; } ;


 int BUG_ON (int) ;
 int EIO ;
 int SDIO_CCCR_IOEx ;
 int mmc_io_rw_direct (int ,int,int ,int ,unsigned char,unsigned char*) ;
 int pr_debug (char*,int ) ;
 int sdio_func_id (struct sdio_func*) ;

int sdio_disable_func(struct sdio_func *func)
{
 int ret;
 unsigned char reg;

 BUG_ON(!func);
 BUG_ON(!func->card);

 pr_debug("SDIO: Disabling device %s...\n", sdio_func_id(func));

 ret = mmc_io_rw_direct(func->card, 0, 0, SDIO_CCCR_IOEx, 0, &reg);
 if (ret)
  goto err;

 reg &= ~(1 << func->num);

 ret = mmc_io_rw_direct(func->card, 1, 0, SDIO_CCCR_IOEx, reg, ((void*)0));
 if (ret)
  goto err;

 pr_debug("SDIO: Disabled device %s\n", sdio_func_id(func));

 return 0;

err:
 pr_debug("SDIO: Failed to disable device %s\n", sdio_func_id(func));
 return -EIO;
}
