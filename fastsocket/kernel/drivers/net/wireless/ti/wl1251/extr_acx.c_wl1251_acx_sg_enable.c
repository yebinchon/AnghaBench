
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_bt_wlan_coex {int enable; } ;


 int ACX_SG_ENABLE ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SG_ENABLE ;
 int kfree (struct acx_bt_wlan_coex*) ;
 struct acx_bt_wlan_coex* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_bt_wlan_coex*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_sg_enable(struct wl1251 *wl)
{
 struct acx_bt_wlan_coex *pta;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx sg enable");

 pta = kzalloc(sizeof(*pta), GFP_KERNEL);
 if (!pta) {
  ret = -ENOMEM;
  goto out;
 }

 pta->enable = SG_ENABLE;

 ret = wl1251_cmd_configure(wl, ACX_SG_ENABLE, pta, sizeof(*pta));
 if (ret < 0) {
  wl1251_warning("failed to set softgemini enable: %d", ret);
  goto out;
 }

out:
 kfree(pta);
 return ret;
}
