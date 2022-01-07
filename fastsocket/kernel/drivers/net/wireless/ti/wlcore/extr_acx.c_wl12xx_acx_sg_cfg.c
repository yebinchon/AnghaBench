
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct conf_sg_settings {int * params; } ;
struct TYPE_2__ {struct conf_sg_settings sg; } ;
struct wl1271 {TYPE_1__ conf; } ;
struct acx_bt_wlan_coex_param {int param_idx; int * params; } ;


 int ACX_SG_CFG ;
 int CONF_SG_PARAMS_ALL ;
 int CONF_SG_PARAMS_MAX ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int ) ;
 int kfree (struct acx_bt_wlan_coex_param*) ;
 struct acx_bt_wlan_coex_param* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_bt_wlan_coex_param*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl12xx_acx_sg_cfg(struct wl1271 *wl)
{
 struct acx_bt_wlan_coex_param *param;
 struct conf_sg_settings *c = &wl->conf.sg;
 int i, ret;

 wl1271_debug(DEBUG_ACX, "acx sg cfg");

 param = kzalloc(sizeof(*param), GFP_KERNEL);
 if (!param) {
  ret = -ENOMEM;
  goto out;
 }


 for (i = 0; i < CONF_SG_PARAMS_MAX; i++)
  param->params[i] = cpu_to_le32(c->params[i]);
 param->param_idx = CONF_SG_PARAMS_ALL;

 ret = wl1271_cmd_configure(wl, ACX_SG_CFG, param, sizeof(*param));
 if (ret < 0) {
  wl1271_warning("failed to set sg config: %d", ret);
  goto out;
 }

out:
 kfree(param);
 return ret;
}
