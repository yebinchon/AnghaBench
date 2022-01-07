
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdio_func {int num; int card; } ;


 int BUG_ON (int) ;
 int mmc_io_rw_direct (int ,int,int ,unsigned int,int ,int *) ;

void sdio_writeb(struct sdio_func *func, u8 b, unsigned int addr, int *err_ret)
{
 int ret;

 BUG_ON(!func);

 ret = mmc_io_rw_direct(func->card, 1, func->num, addr, b, ((void*)0));
 if (err_ret)
  *err_ret = ret;
}
