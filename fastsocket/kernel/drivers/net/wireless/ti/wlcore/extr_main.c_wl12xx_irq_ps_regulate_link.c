
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int active_link_count; int ap_fw_ps_map; } ;


 scalar_t__ WL1271_PS_STA_MAX_PACKETS ;
 int test_bit (scalar_t__,unsigned long*) ;
 int wl12xx_ps_link_end (struct wl1271*,struct wl12xx_vif*,scalar_t__) ;
 int wl12xx_ps_link_start (struct wl1271*,struct wl12xx_vif*,scalar_t__,int) ;

__attribute__((used)) static void wl12xx_irq_ps_regulate_link(struct wl1271 *wl,
     struct wl12xx_vif *wlvif,
     u8 hlid, u8 tx_pkts)
{
 bool fw_ps;

 fw_ps = test_bit(hlid, (unsigned long *)&wl->ap_fw_ps_map);





 if (!fw_ps || tx_pkts < WL1271_PS_STA_MAX_PACKETS)
  wl12xx_ps_link_end(wl, wlvif, hlid);
 else if (wl->active_link_count > 3 && fw_ps &&
   tx_pkts >= WL1271_PS_STA_MAX_PACKETS)
  wl12xx_ps_link_start(wl, wlvif, hlid, 1);
}
