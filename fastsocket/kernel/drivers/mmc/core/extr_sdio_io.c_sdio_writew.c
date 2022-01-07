
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdio_func {scalar_t__ tmpbuf; } ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;
 int sdio_memcpy_toio (struct sdio_func*,unsigned int,scalar_t__,int) ;

void sdio_writew(struct sdio_func *func, u16 b, unsigned int addr, int *err_ret)
{
 int ret;

 *(__le16 *)func->tmpbuf = cpu_to_le16(b);

 ret = sdio_memcpy_toio(func, addr, func->tmpbuf, 2);
 if (err_ret)
  *err_ret = ret;
}
