
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_ctsprotect {int ctsprotect; } ;
typedef enum acx_ctsprotect_type { ____Placeholder_acx_ctsprotect_type } acx_ctsprotect_type ;


 int ACX_CTS_PROTECTION ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_ctsprotect*) ;
 struct acx_ctsprotect* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_ctsprotect*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_cts_protect(struct wl1251 *wl,
      enum acx_ctsprotect_type ctsprotect)
{
 struct acx_ctsprotect *acx;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx_set_ctsprotect");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->ctsprotect = ctsprotect;

 ret = wl1251_cmd_configure(wl, ACX_CTS_PROTECTION, acx, sizeof(*acx));
 if (ret < 0) {
  wl1251_warning("Setting of ctsprotect failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
