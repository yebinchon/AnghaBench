
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct wl1271 {void* sleep_auth; } ;
struct acx_sleep_auth {void* sleep_auth; } ;


 int ACX_SLEEP_AUTH ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_sleep_auth*) ;
 struct acx_sleep_auth* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_sleep_auth*,int) ;
 int wl1271_debug (int ,char*,void*) ;
 int wl1271_error (char*,void*,int) ;

int wl1271_acx_sleep_auth(struct wl1271 *wl, u8 sleep_auth)
{
 struct acx_sleep_auth *auth;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx sleep auth %d", sleep_auth);

 auth = kzalloc(sizeof(*auth), GFP_KERNEL);
 if (!auth) {
  ret = -ENOMEM;
  goto out;
 }

 auth->sleep_auth = sleep_auth;

 ret = wl1271_cmd_configure(wl, ACX_SLEEP_AUTH, auth, sizeof(*auth));
 if (ret < 0) {
  wl1271_error("could not configure sleep_auth to %d: %d",
        sleep_auth, ret);
  goto out;
 }

 wl->sleep_auth = sleep_auth;
out:
 kfree(auth);
 return ret;
}
