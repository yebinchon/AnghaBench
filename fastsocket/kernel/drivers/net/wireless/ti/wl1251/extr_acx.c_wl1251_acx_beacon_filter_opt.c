
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_beacon_filter_option {int enable; scalar_t__ max_num_beacons; } ;


 int ACX_BEACON_FILTER_OPT ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_beacon_filter_option*) ;
 struct acx_beacon_filter_option* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_beacon_filter_option*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_beacon_filter_opt(struct wl1251 *wl, bool enable_filter)
{
 struct acx_beacon_filter_option *beacon_filter;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx beacon filter opt");

 beacon_filter = kzalloc(sizeof(*beacon_filter), GFP_KERNEL);
 if (!beacon_filter) {
  ret = -ENOMEM;
  goto out;
 }

 beacon_filter->enable = enable_filter;
 beacon_filter->max_num_beacons = 0;

 ret = wl1251_cmd_configure(wl, ACX_BEACON_FILTER_OPT,
       beacon_filter, sizeof(*beacon_filter));
 if (ret < 0) {
  wl1251_warning("failed to set beacon filter opt: %d", ret);
  goto out;
 }

out:
 kfree(beacon_filter);
 return ret;
}
