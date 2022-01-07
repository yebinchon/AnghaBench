
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {TYPE_1__* beacon_skb; } ;
struct ieee80211_hdr {int dummy; } ;
struct TYPE_2__ {int len; int data; } ;


 int il_is_associated (struct il_priv*) ;
 int memcpy (struct ieee80211_hdr*,int ,int) ;

unsigned int
il3945_fill_beacon_frame(struct il_priv *il, struct ieee80211_hdr *hdr,
    int left)
{

 if (!il_is_associated(il) || !il->beacon_skb)
  return 0;

 if (il->beacon_skb->len > left)
  return 0;

 memcpy(hdr, il->beacon_skb->data, il->beacon_skb->len);

 return il->beacon_skb->len;
}
