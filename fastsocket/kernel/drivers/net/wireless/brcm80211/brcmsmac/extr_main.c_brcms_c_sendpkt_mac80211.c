
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct sk_buff {int dummy; } ;
struct scb {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct brcms_c_info {struct scb pri_scb; } ;


 int brcms_ac_to_fifo (int ) ;
 int brcms_c_d11hdrs_mac80211 (struct brcms_c_info*,struct ieee80211_hw*,struct sk_buff*,struct scb*,int ,int,int ,int ) ;
 int brcms_c_tx (struct brcms_c_info*,struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;

bool brcms_c_sendpkt_mac80211(struct brcms_c_info *wlc, struct sk_buff *sdu,
         struct ieee80211_hw *hw)
{
 uint fifo;
 struct scb *scb = &wlc->pri_scb;

 fifo = brcms_ac_to_fifo(skb_get_queue_mapping(sdu));
 brcms_c_d11hdrs_mac80211(wlc, hw, sdu, scb, 0, 1, fifo, 0);
 if (!brcms_c_tx(wlc, sdu))
  return 1;


 dev_kfree_skb_any(sdu);
 return 0;
}
