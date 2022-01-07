
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int card; } ;


 int BUG_ON (int) ;
 int mmc_io_rw_direct (int ,int ,int ,unsigned int,int ,unsigned char*) ;

unsigned char sdio_f0_readb(struct sdio_func *func, unsigned int addr,
 int *err_ret)
{
 int ret;
 unsigned char val;

 BUG_ON(!func);

 if (err_ret)
  *err_ret = 0;

 ret = mmc_io_rw_direct(func->card, 0, 0, addr, 0, &val);
 if (ret) {
  if (err_ret)
   *err_ret = ret;
  return 0xFF;
 }

 return val;
}
