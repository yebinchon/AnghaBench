
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_feature_config {scalar_t__ options; scalar_t__ data_flow_options; } ;


 int ACX_FEATURE_CFG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_feature_config*) ;
 struct acx_feature_config* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_feature_config*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_error (char*) ;

int wl1251_acx_feature_cfg(struct wl1251 *wl)
{
 struct acx_feature_config *feature;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx feature cfg");

 feature = kzalloc(sizeof(*feature), GFP_KERNEL);
 if (!feature) {
  ret = -ENOMEM;
  goto out;
 }


 feature->data_flow_options = 0;
 feature->options = 0;

 ret = wl1251_cmd_configure(wl, ACX_FEATURE_CFG,
       feature, sizeof(*feature));
 if (ret < 0) {
  wl1251_error("Couldn't set HW encryption");
  goto out;
 }

out:
 kfree(feature);
 return ret;
}
