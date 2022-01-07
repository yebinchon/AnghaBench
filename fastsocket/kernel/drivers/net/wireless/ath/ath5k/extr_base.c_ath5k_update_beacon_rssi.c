
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct ieee80211_mgmt {int bssid; int frame_control; } ;
struct ath_common {int curbssid; } ;
struct ath5k_hw {int ah_beacon_rssi_avg; } ;


 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 int ether_addr_equal (int ,int ) ;
 int ewma_add (int *,int) ;
 int ieee80211_is_beacon (int ) ;

__attribute__((used)) static void
ath5k_update_beacon_rssi(struct ath5k_hw *ah, struct sk_buff *skb, int rssi)
{
 struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)skb->data;
 struct ath_common *common = ath5k_hw_common(ah);


 if (!ieee80211_is_beacon(mgmt->frame_control) ||
     !ether_addr_equal(mgmt->bssid, common->curbssid))
  return;

 ewma_add(&ah->ah_beacon_rssi_avg, rssi);



}
