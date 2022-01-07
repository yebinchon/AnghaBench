
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl1251 {int dummy; } ;
struct acx_rts_threshold {int threshold; } ;


 int DEBUG_ACX ;
 int DOT11_RTS_THRESHOLD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_rts_threshold*) ;
 struct acx_rts_threshold* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_rts_threshold*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_rts_threshold(struct wl1251 *wl, u16 rts_threshold)
{
 struct acx_rts_threshold *rts;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx rts threshold");

 rts = kzalloc(sizeof(*rts), GFP_KERNEL);
 if (!rts) {
  ret = -ENOMEM;
  goto out;
 }

 rts->threshold = rts_threshold;

 ret = wl1251_cmd_configure(wl, DOT11_RTS_THRESHOLD, rts, sizeof(*rts));
 if (ret < 0) {
  wl1251_warning("failed to set rts threshold: %d", ret);
  goto out;
 }

out:
 kfree(rts);
 return ret;
}
