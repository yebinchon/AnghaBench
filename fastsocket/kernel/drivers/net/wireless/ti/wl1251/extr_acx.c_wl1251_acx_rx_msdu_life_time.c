
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251 {int dummy; } ;
struct acx_rx_msdu_lifetime {int lifetime; } ;


 int DEBUG_ACX ;
 int DOT11_RX_MSDU_LIFE_TIME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_rx_msdu_lifetime*) ;
 struct acx_rx_msdu_lifetime* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_rx_msdu_lifetime*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_rx_msdu_life_time(struct wl1251 *wl, u32 life_time)
{
 struct acx_rx_msdu_lifetime *acx;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx rx msdu life time");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->lifetime = life_time;
 ret = wl1251_cmd_configure(wl, DOT11_RX_MSDU_LIFE_TIME,
       acx, sizeof(*acx));
 if (ret < 0) {
  wl1251_warning("failed to set rx msdu life time: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
