
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_current_tx_power {int current_tx_power; int role_id; } ;


 int DEBUG_ACX ;
 int DOT11_CUR_TX_PWR ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_current_tx_power*) ;
 struct acx_current_tx_power* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_current_tx_power*,int) ;
 int wl1271_debug (int ,char*,int) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_tx_power(struct wl1271 *wl, struct wl12xx_vif *wlvif,
   int power)
{
 struct acx_current_tx_power *acx;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx dot11_cur_tx_pwr %d", power);

 if (power < 0 || power > 25)
  return -EINVAL;

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->role_id = wlvif->role_id;
 acx->current_tx_power = power * 10;

 ret = wl1271_cmd_configure(wl, DOT11_CUR_TX_PWR, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("configure of tx power failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
