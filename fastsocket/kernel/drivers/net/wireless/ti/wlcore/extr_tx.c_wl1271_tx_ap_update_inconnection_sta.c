
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271_tx_hw_descr {int dummy; } ;
struct wl1271 {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;


 scalar_t__ ieee80211_is_auth (int ) ;
 int wl1271_acx_set_inconnection_sta (struct wl1271*,int ) ;

__attribute__((used)) static void wl1271_tx_ap_update_inconnection_sta(struct wl1271 *wl,
       struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr;






 hdr = (struct ieee80211_hdr *)(skb->data +
           sizeof(struct wl1271_tx_hw_descr));
 if (ieee80211_is_auth(hdr->frame_control))
  wl1271_acx_set_inconnection_sta(wl, hdr->addr1);
}
