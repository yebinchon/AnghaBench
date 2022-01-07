
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int basic_rate; } ;
struct wl1271_acx_config_ps {int null_data_rate; int enter_retries; int exit_retries; } ;
struct TYPE_4__ {int psm_entry_retries; int psm_exit_retries; } ;
struct TYPE_3__ {TYPE_2__ conn; } ;
struct wl1271 {TYPE_1__ conf; } ;


 int ACX_CONFIG_PS ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int ) ;
 int kfree (struct wl1271_acx_config_ps*) ;
 struct wl1271_acx_config_ps* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_config_ps*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl12xx_acx_config_ps(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct wl1271_acx_config_ps *config_ps;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx config ps");

 config_ps = kzalloc(sizeof(*config_ps), GFP_KERNEL);
 if (!config_ps) {
  ret = -ENOMEM;
  goto out;
 }

 config_ps->exit_retries = wl->conf.conn.psm_exit_retries;
 config_ps->enter_retries = wl->conf.conn.psm_entry_retries;
 config_ps->null_data_rate = cpu_to_le32(wlvif->basic_rate);

 ret = wl1271_cmd_configure(wl, ACX_CONFIG_PS, config_ps,
       sizeof(*config_ps));

 if (ret < 0) {
  wl1271_warning("acx config ps failed: %d", ret);
  goto out;
 }

out:
 kfree(config_ps);
 return ret;
}
