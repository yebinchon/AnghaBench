
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlapi_timer {int dummy; } ;
struct phy_shim_info {int wl; } ;


 scalar_t__ brcms_init_timer (int ,void (*) (void*),void*,char const*) ;

struct wlapi_timer *wlapi_init_timer(struct phy_shim_info *physhim,
         void (*fn)(struct brcms_phy *pi),
         void *arg, const char *name)
{
 return (struct wlapi_timer *)
   brcms_init_timer(physhim->wl, (void (*)(void *))fn,
      arg, name);
}
