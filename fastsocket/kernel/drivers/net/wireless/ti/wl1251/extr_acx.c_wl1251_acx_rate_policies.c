
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1251 {int dummy; } ;
struct acx_rate_policy {int rate_class_cnt; TYPE_1__* rate_class; } ;
struct TYPE_2__ {scalar_t__ aflags; void* long_retry_limit; void* short_retry_limit; int enabled_rates; } ;


 int ACX_RATE_MASK_UNSPECIFIED ;
 int ACX_RATE_POLICY ;
 void* ACX_RATE_RETRY_LIMIT ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_rate_policy*) ;
 struct acx_rate_policy* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_rate_policy*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_rate_policies(struct wl1251 *wl)
{
 struct acx_rate_policy *acx;
 int ret = 0;

 wl1251_debug(DEBUG_ACX, "acx rate policies");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);

 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }


 acx->rate_class_cnt = 1;
 acx->rate_class[0].enabled_rates = ACX_RATE_MASK_UNSPECIFIED;
 acx->rate_class[0].short_retry_limit = ACX_RATE_RETRY_LIMIT;
 acx->rate_class[0].long_retry_limit = ACX_RATE_RETRY_LIMIT;
 acx->rate_class[0].aflags = 0;

 ret = wl1251_cmd_configure(wl, ACX_RATE_POLICY, acx, sizeof(*acx));
 if (ret < 0) {
  wl1251_warning("Setting of rate policies failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
