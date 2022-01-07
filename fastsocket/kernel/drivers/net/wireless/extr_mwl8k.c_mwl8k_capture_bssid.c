
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_priv {int capture_bssid; scalar_t__ capture_beacon; } ;
struct ieee80211_hdr {int addr3; int frame_control; } ;


 scalar_t__ ether_addr_equal (int ,int ) ;
 scalar_t__ ieee80211_is_beacon (int ) ;

__attribute__((used)) static inline int
mwl8k_capture_bssid(struct mwl8k_priv *priv, struct ieee80211_hdr *wh)
{
 return priv->capture_beacon &&
  ieee80211_is_beacon(wh->frame_control) &&
  ether_addr_equal(wh->addr3, priv->capture_bssid);
}
