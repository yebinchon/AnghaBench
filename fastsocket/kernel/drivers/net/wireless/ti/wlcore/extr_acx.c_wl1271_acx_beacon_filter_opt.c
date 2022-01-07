
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int role_id; } ;
struct TYPE_4__ {scalar_t__ bcn_filt_mode; } ;
struct TYPE_3__ {TYPE_2__ conn; } ;
struct wl1271 {TYPE_1__ conf; } ;
struct acx_beacon_filter_option {int enable; scalar_t__ max_num_beacons; int role_id; } ;


 int ACX_BEACON_FILTER_OPT ;
 scalar_t__ CONF_BCN_FILT_MODE_DISABLED ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_beacon_filter_option*) ;
 struct acx_beacon_filter_option* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_beacon_filter_option*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_beacon_filter_opt(struct wl1271 *wl, struct wl12xx_vif *wlvif,
     bool enable_filter)
{
 struct acx_beacon_filter_option *beacon_filter = ((void*)0);
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx beacon filter opt");

 if (enable_filter &&
     wl->conf.conn.bcn_filt_mode == CONF_BCN_FILT_MODE_DISABLED)
  goto out;

 beacon_filter = kzalloc(sizeof(*beacon_filter), GFP_KERNEL);
 if (!beacon_filter) {
  ret = -ENOMEM;
  goto out;
 }

 beacon_filter->role_id = wlvif->role_id;
 beacon_filter->enable = enable_filter;





 beacon_filter->max_num_beacons = 0;

 ret = wl1271_cmd_configure(wl, ACX_BEACON_FILTER_OPT,
       beacon_filter, sizeof(*beacon_filter));
 if (ret < 0) {
  wl1271_warning("failed to set beacon filter opt: %d", ret);
  goto out;
 }

out:
 kfree(beacon_filter);
 return ret;
}
