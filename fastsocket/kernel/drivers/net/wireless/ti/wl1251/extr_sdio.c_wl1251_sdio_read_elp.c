
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251_sdio {int elp_val; struct sdio_func* func; } ;
struct wl1251 {struct wl1251_sdio* if_priv; } ;
struct sdio_func {int dummy; } ;


 int sdio_claim_host (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_writeb_readb (struct sdio_func*,int ,int,int*) ;
 int wl1251_error (char*,int) ;

__attribute__((used)) static void wl1251_sdio_read_elp(struct wl1251 *wl, int addr, u32 *val)
{
 int ret = 0;
 struct wl1251_sdio *wl_sdio = wl->if_priv;
 struct sdio_func *func = wl_sdio->func;







 sdio_claim_host(func);
 *val = sdio_writeb_readb(func, wl_sdio->elp_val, addr, &ret);
 sdio_release_host(func);

 if (ret)
  wl1251_error("sdio_readb failed (%d)", ret);
}
