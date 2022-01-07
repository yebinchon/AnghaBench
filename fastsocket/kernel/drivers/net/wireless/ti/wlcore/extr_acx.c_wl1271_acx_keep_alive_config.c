
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct wl12xx_vif {int role_id; } ;
struct wl1271_acx_keep_alive_config {int trigger; void* tpl_validation; void* index; int period; int role_id; } ;
struct TYPE_3__ {int keep_alive_interval; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct wl1271 {TYPE_2__ conf; } ;


 int ACX_KEEP_ALIVE_NO_TX ;
 int ACX_SET_KEEP_ALIVE_CONFIG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int ) ;
 int kfree (struct wl1271_acx_keep_alive_config*) ;
 struct wl1271_acx_keep_alive_config* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_keep_alive_config*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_keep_alive_config(struct wl1271 *wl, struct wl12xx_vif *wlvif,
     u8 index, u8 tpl_valid)
{
 struct wl1271_acx_keep_alive_config *acx = ((void*)0);
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx keep alive config");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->role_id = wlvif->role_id;
 acx->period = cpu_to_le32(wl->conf.conn.keep_alive_interval);
 acx->index = index;
 acx->tpl_validation = tpl_valid;
 acx->trigger = ACX_KEEP_ALIVE_NO_TX;

 ret = wl1271_cmd_configure(wl, ACX_SET_KEEP_ALIVE_CONFIG,
       acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx keep alive config failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
