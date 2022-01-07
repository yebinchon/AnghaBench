
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int addr1; } ;
struct ar9170 {TYPE_1__* vif_priv; } ;
struct TYPE_4__ {unsigned int misc; } ;
struct _carl9170_tx_superframe {TYPE_2__ s; scalar_t__ frame_data; } ;
struct TYPE_3__ {int vif; } ;


 unsigned int AR9170_MAX_VIRTUAL_MAC ;
 unsigned int CARL9170_TX_SUPER_MISC_VIF_ID ;
 unsigned int CARL9170_TX_SUPER_MISC_VIF_ID_S ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct ieee80211_sta* ieee80211_find_sta (struct ieee80211_vif*,int ) ;
 struct ieee80211_vif* rcu_dereference (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ieee80211_sta *__carl9170_get_tx_sta(struct ar9170 *ar,
         struct sk_buff *skb)
{
 struct _carl9170_tx_superframe *super = (void *) skb->data;
 struct ieee80211_hdr *hdr = (void *) super->frame_data;
 struct ieee80211_vif *vif;
 unsigned int vif_id;

 vif_id = (super->s.misc & CARL9170_TX_SUPER_MISC_VIF_ID) >>
   CARL9170_TX_SUPER_MISC_VIF_ID_S;

 if (WARN_ON_ONCE(vif_id >= AR9170_MAX_VIRTUAL_MAC))
  return ((void*)0);

 vif = rcu_dereference(ar->vif_priv[vif_id].vif);
 if (unlikely(!vif))
  return ((void*)0);
 return ieee80211_find_sta(vif, hdr->addr1);
}
