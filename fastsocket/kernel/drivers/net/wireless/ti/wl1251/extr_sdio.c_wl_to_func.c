
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251_sdio {struct sdio_func* func; } ;
struct wl1251 {struct wl1251_sdio* if_priv; } ;
struct sdio_func {int dummy; } ;



__attribute__((used)) static struct sdio_func *wl_to_func(struct wl1251 *wl)
{
 struct wl1251_sdio *wl_sdio = wl->if_priv;
 return wl_sdio->func;
}
