
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;


 int wl1251_acx_beacon_filter_opt (struct wl1251*,int) ;
 int wl1251_acx_beacon_filter_table (struct wl1251*) ;

int wl1251_hw_init_beacon_filter(struct wl1251 *wl)
{
 int ret;


 ret = wl1251_acx_beacon_filter_opt(wl, 0);
 if (ret < 0)
  return ret;

 ret = wl1251_acx_beacon_filter_table(wl);
 if (ret < 0)
  return ret;

 return 0;
}
