
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1251_acx_bet_enable {int enable; int max_consecutive; } ;
struct wl1251 {int dummy; } ;
typedef enum wl1251_acx_bet_mode { ____Placeholder_wl1251_acx_bet_mode } wl1251_acx_bet_mode ;


 int ACX_BET_ENABLE ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1251_acx_bet_enable*) ;
 struct wl1251_acx_bet_enable* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct wl1251_acx_bet_enable*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_bet_enable(struct wl1251 *wl, enum wl1251_acx_bet_mode mode,
     u8 max_consecutive)
{
 struct wl1251_acx_bet_enable *acx;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx bet enable");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->enable = mode;
 acx->max_consecutive = max_consecutive;

 ret = wl1251_cmd_configure(wl, ACX_BET_ENABLE, acx, sizeof(*acx));
 if (ret < 0) {
  wl1251_warning("wl1251 acx bet enable failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
