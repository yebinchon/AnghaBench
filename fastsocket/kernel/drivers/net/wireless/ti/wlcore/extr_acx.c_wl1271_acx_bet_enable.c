
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int role_id; } ;
struct wl1271_acx_bet_enable {int max_consecutive; scalar_t__ enable; int role_id; } ;
struct TYPE_3__ {scalar_t__ bet_enable; int bet_max_consecutive; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct wl1271 {TYPE_2__ conf; } ;


 int ACX_BET_ENABLE ;
 scalar_t__ CONF_BET_MODE_DISABLE ;
 scalar_t__ CONF_BET_MODE_ENABLE ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1271_acx_bet_enable*) ;
 struct wl1271_acx_bet_enable* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_bet_enable*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_bet_enable(struct wl1271 *wl, struct wl12xx_vif *wlvif,
     bool enable)
{
 struct wl1271_acx_bet_enable *acx = ((void*)0);
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx bet enable");

 if (enable && wl->conf.conn.bet_enable == CONF_BET_MODE_DISABLE)
  goto out;

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->role_id = wlvif->role_id;
 acx->enable = enable ? CONF_BET_MODE_ENABLE : CONF_BET_MODE_DISABLE;
 acx->max_consecutive = wl->conf.conn.bet_max_consecutive;

 ret = wl1271_cmd_configure(wl, ACX_BET_ENABLE, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx bet enable failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
