
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct il_priv {int dummy; } ;
struct ieee80211_tx_control {int sta; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
struct TYPE_2__ {int bitrate; } ;


 int D_MACDUMP (char*) ;
 int D_TX (char*,int ,int ) ;
 int IEEE80211_SKB_CB (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 TYPE_1__* ieee80211_get_tx_rate (struct ieee80211_hw*,int ) ;
 scalar_t__ il4965_tx_skb (struct il_priv*,int ,struct sk_buff*) ;

void
il4965_mac_tx(struct ieee80211_hw *hw,
       struct ieee80211_tx_control *control,
       struct sk_buff *skb)
{
 struct il_priv *il = hw->priv;

 D_MACDUMP("enter\n");

 D_TX("dev->xmit(%d bytes) at rate 0x%02x\n", skb->len,
      ieee80211_get_tx_rate(hw, IEEE80211_SKB_CB(skb))->bitrate);

 if (il4965_tx_skb(il, control->sta, skb))
  dev_kfree_skb_any(skb);

 D_MACDUMP("leave\n");
}
