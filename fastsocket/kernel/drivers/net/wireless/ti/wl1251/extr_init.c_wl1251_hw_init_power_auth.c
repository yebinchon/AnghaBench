
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;


 int WL1251_PSM_CAM ;
 int wl1251_acx_sleep_auth (struct wl1251*,int ) ;

int wl1251_hw_init_power_auth(struct wl1251 *wl)
{
 return wl1251_acx_sleep_auth(wl, WL1251_PSM_CAM);
}
