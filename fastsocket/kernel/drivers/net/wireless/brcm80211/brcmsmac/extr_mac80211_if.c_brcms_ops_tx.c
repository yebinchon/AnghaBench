
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int * rate_driver_data; } ;
struct ieee80211_tx_control {int sta; } ;
struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {int lock; TYPE_3__* wlc; TYPE_2__* pub; } ;
struct TYPE_6__ {TYPE_1__* hw; } ;
struct TYPE_5__ {int up; } ;
struct TYPE_4__ {int d11core; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int brcms_c_sendpkt_mac80211 (TYPE_3__*,struct sk_buff*,struct ieee80211_hw*) ;
 int brcms_err (int ,char*) ;
 int kfree_skb (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void brcms_ops_tx(struct ieee80211_hw *hw,
    struct ieee80211_tx_control *control,
    struct sk_buff *skb)
{
 struct brcms_info *wl = hw->priv;
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);

 spin_lock_bh(&wl->lock);
 if (!wl->pub->up) {
  brcms_err(wl->wlc->hw->d11core, "ops->tx called while down\n");
  kfree_skb(skb);
  goto done;
 }
 brcms_c_sendpkt_mac80211(wl->wlc, skb, hw);
 tx_info->rate_driver_data[0] = control->sta;
 done:
 spin_unlock_bh(&wl->lock);
}
