
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int default_key; } ;


 int wl1251_acx_default_key (struct wl1251*,int ) ;
 int wl1251_acx_feature_cfg (struct wl1251*) ;
 int wl1251_warning (char*) ;

int wl1251_hw_init_hwenc_config(struct wl1251 *wl)
{
 int ret;

 ret = wl1251_acx_feature_cfg(wl);
 if (ret < 0) {
  wl1251_warning("couldn't set feature config");
  return ret;
 }

 ret = wl1251_acx_default_key(wl, wl->default_key);
 if (ret < 0) {
  wl1251_warning("couldn't set default key");
  return ret;
 }

 return 0;
}
