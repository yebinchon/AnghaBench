
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251 {int dummy; } ;


 int RX_MSDU_LIFETIME_DEF ;
 int wl1251_acx_rx_config (struct wl1251*,int ,int ) ;
 int wl1251_acx_rx_msdu_life_time (struct wl1251*,int ) ;

int wl1251_hw_init_rx_config(struct wl1251 *wl, u32 config, u32 filter)
{
 int ret;

 ret = wl1251_acx_rx_msdu_life_time(wl, RX_MSDU_LIFETIME_DEF);
 if (ret < 0)
  return ret;

 ret = wl1251_acx_rx_config(wl, config, filter);
 if (ret < 0)
  return ret;

 return 0;
}
