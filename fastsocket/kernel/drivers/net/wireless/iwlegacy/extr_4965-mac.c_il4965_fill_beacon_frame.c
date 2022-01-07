
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct il_priv {TYPE_1__* beacon_skb; int mutex; } ;
struct ieee80211_hdr {int dummy; } ;
struct TYPE_2__ {int len; int data; } ;


 int lockdep_assert_held (int *) ;
 int memcpy (struct ieee80211_hdr*,int ,int) ;

__attribute__((used)) static u32
il4965_fill_beacon_frame(struct il_priv *il, struct ieee80211_hdr *hdr,
    int left)
{
 lockdep_assert_held(&il->mutex);

 if (!il->beacon_skb)
  return 0;

 if (il->beacon_skb->len > left)
  return 0;

 memcpy(hdr, il->beacon_skb->data, il->beacon_skb->len);

 return il->beacon_skb->len;
}
