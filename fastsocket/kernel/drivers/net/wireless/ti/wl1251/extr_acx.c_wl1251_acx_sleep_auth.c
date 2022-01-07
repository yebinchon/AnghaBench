
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1251 {int dummy; } ;
struct acx_sleep_auth {int sleep_auth; } ;


 int ACX_SLEEP_AUTH ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_sleep_auth*) ;
 struct acx_sleep_auth* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_sleep_auth*,int) ;
 int wl1251_debug (int ,char*) ;

int wl1251_acx_sleep_auth(struct wl1251 *wl, u8 sleep_auth)
{
 struct acx_sleep_auth *auth;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx sleep auth");

 auth = kzalloc(sizeof(*auth), GFP_KERNEL);
 if (!auth) {
  ret = -ENOMEM;
  goto out;
 }

 auth->sleep_auth = sleep_auth;

 ret = wl1251_cmd_configure(wl, ACX_SLEEP_AUTH, auth, sizeof(*auth));

out:
 kfree(auth);
 return ret;
}
