
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdio_func {scalar_t__ tmpbuf; } ;
typedef int __le32 ;


 int le32_to_cpup (int *) ;
 int sdio_memcpy_fromio (struct sdio_func*,scalar_t__,unsigned int,int) ;

u32 sdio_readl(struct sdio_func *func, unsigned int addr, int *err_ret)
{
 int ret;

 if (err_ret)
  *err_ret = 0;

 ret = sdio_memcpy_fromio(func, func->tmpbuf, addr, 4);
 if (ret) {
  if (err_ret)
   *err_ret = ret;
  return 0xFFFFFFFF;
 }

 return le32_to_cpup((__le32 *)func->tmpbuf);
}
