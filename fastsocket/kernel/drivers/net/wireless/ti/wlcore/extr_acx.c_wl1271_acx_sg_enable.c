
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ sg; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_bt_wlan_coex {int enable; } ;


 int ACX_SG_ENABLE ;
 int CONF_SG_DISABLE ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_bt_wlan_coex*) ;
 struct acx_bt_wlan_coex* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_bt_wlan_coex*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_sg_enable(struct wl1271 *wl, bool enable)
{
 struct acx_bt_wlan_coex *pta;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx sg enable");

 pta = kzalloc(sizeof(*pta), GFP_KERNEL);
 if (!pta) {
  ret = -ENOMEM;
  goto out;
 }

 if (enable)
  pta->enable = wl->conf.sg.state;
 else
  pta->enable = CONF_SG_DISABLE;

 ret = wl1271_cmd_configure(wl, ACX_SG_ENABLE, pta, sizeof(*pta));
 if (ret < 0) {
  wl1271_warning("failed to set softgemini enable: %d", ret);
  goto out;
 }

out:
 kfree(pta);
 return ret;
}
