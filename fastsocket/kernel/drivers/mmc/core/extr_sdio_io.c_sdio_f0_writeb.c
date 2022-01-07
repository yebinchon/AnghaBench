
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int card; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int mmc_card_lenient_fn0 (int ) ;
 int mmc_io_rw_direct (int ,int,int ,unsigned int,unsigned char,int *) ;

void sdio_f0_writeb(struct sdio_func *func, unsigned char b, unsigned int addr,
 int *err_ret)
{
 int ret;

 BUG_ON(!func);

 if ((addr < 0xF0 || addr > 0xFF) && (!mmc_card_lenient_fn0(func->card))) {
  if (err_ret)
   *err_ret = -EINVAL;
  return;
 }

 ret = mmc_io_rw_direct(func->card, 1, 0, addr, b, ((void*)0));
 if (err_ret)
  *err_ret = ret;
}
