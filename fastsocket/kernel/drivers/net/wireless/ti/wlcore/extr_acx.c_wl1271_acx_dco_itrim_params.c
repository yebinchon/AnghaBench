
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct conf_itrim_settings {int timeout; int enable; } ;
struct TYPE_2__ {struct conf_itrim_settings itrim; } ;
struct wl1271 {TYPE_1__ conf; } ;
struct acx_dco_itrim_params {int timeout; int enable; } ;


 int ACX_SET_DCO_ITRIM_PARAMS ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int ) ;
 int kfree (struct acx_dco_itrim_params*) ;
 struct acx_dco_itrim_params* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_dco_itrim_params*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_dco_itrim_params(struct wl1271 *wl)
{
 struct acx_dco_itrim_params *dco;
 struct conf_itrim_settings *c = &wl->conf.itrim;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx dco itrim parameters");

 dco = kzalloc(sizeof(*dco), GFP_KERNEL);
 if (!dco) {
  ret = -ENOMEM;
  goto out;
 }

 dco->enable = c->enable;
 dco->timeout = cpu_to_le32(c->timeout);

 ret = wl1271_cmd_configure(wl, ACX_SET_DCO_ITRIM_PARAMS,
       dco, sizeof(*dco));
 if (ret < 0) {
  wl1271_warning("failed to set dco itrim parameters: %d", ret);
  goto out;
 }

out:
 kfree(dco);
 return ret;
}
