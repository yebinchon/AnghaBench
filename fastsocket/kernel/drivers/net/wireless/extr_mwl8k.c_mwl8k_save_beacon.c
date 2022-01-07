
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mwl8k_priv {int capture_beacon; int finalize_join_worker; int * beacon_skb; int capture_bssid; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int ieee80211_queue_work (struct ieee80211_hw*,int *) ;
 int memset (int ,int ,int ) ;
 int * skb_copy (struct sk_buff*,int ) ;

__attribute__((used)) static inline void mwl8k_save_beacon(struct ieee80211_hw *hw,
         struct sk_buff *skb)
{
 struct mwl8k_priv *priv = hw->priv;

 priv->capture_beacon = 0;
 memset(priv->capture_bssid, 0, ETH_ALEN);






 priv->beacon_skb = skb_copy(skb, GFP_ATOMIC);
 if (priv->beacon_skb != ((void*)0))
  ieee80211_queue_work(hw, &priv->finalize_join_worker);
}
