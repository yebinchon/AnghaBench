
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdio_func {scalar_t__ tmpbuf; } ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;
 int sdio_memcpy_toio (struct sdio_func*,unsigned int,scalar_t__,int) ;

void sdio_writel(struct sdio_func *func, u32 b, unsigned int addr, int *err_ret)
{
 int ret;

 *(__le32 *)func->tmpbuf = cpu_to_le32(b);

 ret = sdio_memcpy_toio(func, addr, func->tmpbuf, 4);
 if (err_ret)
  *err_ret = ret;
}
