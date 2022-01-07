
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_conn_monit_params {int bss_lose_timeout; int synch_fail_thold; } ;


 int ACX_CONN_MONIT_PARAMS ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NO_BEACON_DEFAULT_TIMEOUT ;
 int SYNCH_FAIL_DEFAULT_THRESHOLD ;
 int kfree (struct acx_conn_monit_params*) ;
 struct acx_conn_monit_params* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_conn_monit_params*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_conn_monit_params(struct wl1251 *wl)
{
 struct acx_conn_monit_params *acx;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx connection monitor parameters");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->synch_fail_thold = SYNCH_FAIL_DEFAULT_THRESHOLD;
 acx->bss_lose_timeout = NO_BEACON_DEFAULT_TIMEOUT;

 ret = wl1251_cmd_configure(wl, ACX_CONN_MONIT_PARAMS,
       acx, sizeof(*acx));
 if (ret < 0) {
  wl1251_warning("failed to set connection monitor "
          "parameters: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
