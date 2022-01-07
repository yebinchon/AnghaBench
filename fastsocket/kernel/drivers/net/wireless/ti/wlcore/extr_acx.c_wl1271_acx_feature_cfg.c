
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_feature_config {scalar_t__ options; scalar_t__ data_flow_options; int role_id; } ;


 int ACX_FEATURE_CFG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_feature_config*) ;
 struct acx_feature_config* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_feature_config*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_error (char*) ;

int wl1271_acx_feature_cfg(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 struct acx_feature_config *feature;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx feature cfg");

 feature = kzalloc(sizeof(*feature), GFP_KERNEL);
 if (!feature) {
  ret = -ENOMEM;
  goto out;
 }


 feature->role_id = wlvif->role_id;
 feature->data_flow_options = 0;
 feature->options = 0;

 ret = wl1271_cmd_configure(wl, ACX_FEATURE_CFG,
       feature, sizeof(*feature));
 if (ret < 0) {
  wl1271_error("Couldnt set HW encryption");
  goto out;
 }

out:
 kfree(feature);
 return ret;
}
