
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;


 int sdio_io_rw_ext_helper (struct sdio_func*,int ,unsigned int,int,void*,int) ;

int sdio_memcpy_fromio(struct sdio_func *func, void *dst,
 unsigned int addr, int count)
{
 return sdio_io_rw_ext_helper(func, 0, addr, 1, dst, count);
}
