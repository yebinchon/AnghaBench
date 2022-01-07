
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271_acx_pm_config {int host_fast_wakeup_support; int host_clk_settling_time; } ;
struct conf_pm_config_settings {int host_fast_wakeup_support; int host_clk_settling_time; } ;
struct TYPE_2__ {struct conf_pm_config_settings pm_config; } ;
struct wl1271 {TYPE_1__ conf; } ;


 int ACX_PM_CONFIG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int ) ;
 int kfree (struct wl1271_acx_pm_config*) ;
 struct wl1271_acx_pm_config* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_pm_config*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_pm_config(struct wl1271 *wl)
{
 struct wl1271_acx_pm_config *acx = ((void*)0);
 struct conf_pm_config_settings *c = &wl->conf.pm_config;
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx pm config");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->host_clk_settling_time = cpu_to_le32(c->host_clk_settling_time);
 acx->host_fast_wakeup_support = c->host_fast_wakeup_support;

 ret = wl1271_cmd_configure(wl, ACX_PM_CONFIG, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx pm config failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
