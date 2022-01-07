
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct sdio_func {int dummy; } ;


 int sdio_claim_host (struct sdio_func*) ;
 int sdio_memcpy_toio (struct sdio_func*,int,void*,size_t) ;
 int sdio_release_host (struct sdio_func*) ;
 int wl1251_error (char*,int) ;
 struct sdio_func* wl_to_func (struct wl1251*) ;

__attribute__((used)) static void wl1251_sdio_write(struct wl1251 *wl, int addr,
         void *buf, size_t len)
{
 int ret;
 struct sdio_func *func = wl_to_func(wl);

 sdio_claim_host(func);
 ret = sdio_memcpy_toio(func, addr, buf, len);
 if (ret)
  wl1251_error("sdio write failed (%d)", ret);
 sdio_release_host(func);
}
