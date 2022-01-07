
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct il_priv {int hw; } ;
struct ieee80211_hdr {int addr1; } ;


 int ieee80211_tx_status_irqsafe (int ,struct sk_buff*) ;
 int il4965_non_agg_tx_status (struct il_priv*,int ) ;

__attribute__((used)) static void
il4965_tx_status(struct il_priv *il, struct sk_buff *skb, bool is_agg)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;

 if (!is_agg)
  il4965_non_agg_tx_status(il, hdr->addr1);

 ieee80211_tx_status_irqsafe(il->hw, skb);
}
