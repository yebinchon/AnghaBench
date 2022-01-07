
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;
struct acx_beacon_broadcast {int ps_poll_threshold; int rx_broadcast_in_ps; int broadcast_timeout; int beacon_rx_timeout; } ;


 int ACX_BCN_DTIM_OPTIONS ;
 int BCN_RX_TIMEOUT_DEF_VALUE ;
 int BROADCAST_RX_TIMEOUT_DEF_VALUE ;
 int CONSECUTIVE_PS_POLL_FAILURE_DEF ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RX_BROADCAST_IN_PS_DEF_VALUE ;
 int kfree (struct acx_beacon_broadcast*) ;
 struct acx_beacon_broadcast* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_beacon_broadcast*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,int) ;

int wl1251_acx_bcn_dtim_options(struct wl1251 *wl)
{
 struct acx_beacon_broadcast *bb;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx bcn dtim options");

 bb = kzalloc(sizeof(*bb), GFP_KERNEL);
 if (!bb) {
  ret = -ENOMEM;
  goto out;
 }

 bb->beacon_rx_timeout = BCN_RX_TIMEOUT_DEF_VALUE;
 bb->broadcast_timeout = BROADCAST_RX_TIMEOUT_DEF_VALUE;
 bb->rx_broadcast_in_ps = RX_BROADCAST_IN_PS_DEF_VALUE;
 bb->ps_poll_threshold = CONSECUTIVE_PS_POLL_FAILURE_DEF;

 ret = wl1251_cmd_configure(wl, ACX_BCN_DTIM_OPTIONS, bb, sizeof(*bb));
 if (ret < 0) {
  wl1251_warning("failed to set rx config: %d", ret);
  goto out;
 }

out:
 kfree(bb);
 return ret;
}
