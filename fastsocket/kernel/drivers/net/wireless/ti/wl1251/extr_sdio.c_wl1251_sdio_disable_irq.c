
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct sdio_func {int dummy; } ;


 int sdio_claim_host (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;
 struct sdio_func* wl_to_func (struct wl1251*) ;

__attribute__((used)) static void wl1251_sdio_disable_irq(struct wl1251 *wl)
{
 struct sdio_func *func = wl_to_func(wl);

 sdio_claim_host(func);
 sdio_release_irq(func);
 sdio_release_host(func);
}
