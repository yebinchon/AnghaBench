
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct prism2_frag_entry {unsigned int seq; unsigned int last_frag; struct sk_buff* skb; int dst_addr; int src_addr; int first_frag_time; } ;
struct ieee80211_hdr {int addr1; int addr2; int seq_ctrl; } ;
struct TYPE_6__ {size_t frag_next_idx; struct prism2_frag_entry* frag_cache; TYPE_1__* dev; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_5__ {scalar_t__ mtu; } ;


 scalar_t__ ETH_ALEN ;
 int IEEE80211_SCTL_FRAG ;
 int IEEE80211_SCTL_SEQ ;
 size_t PRISM2_FRAG_CACHE_LEN ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int jiffies ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 struct prism2_frag_entry* prism2_frag_cache_find (TYPE_2__*,unsigned int,unsigned int,int ,int ) ;

__attribute__((used)) static struct sk_buff *
prism2_frag_cache_get(local_info_t *local, struct ieee80211_hdr *hdr)
{
 struct sk_buff *skb = ((void*)0);
 u16 sc;
 unsigned int frag, seq;
 struct prism2_frag_entry *entry;

 sc = le16_to_cpu(hdr->seq_ctrl);
 frag = sc & IEEE80211_SCTL_FRAG;
 seq = (sc & IEEE80211_SCTL_SEQ) >> 4;

 if (frag == 0) {

  skb = dev_alloc_skb(local->dev->mtu +
        sizeof(struct ieee80211_hdr) +
        8 +
        2 +
        8 + ETH_ALEN );
  if (skb == ((void*)0))
   return ((void*)0);

  entry = &local->frag_cache[local->frag_next_idx];
  local->frag_next_idx++;
  if (local->frag_next_idx >= PRISM2_FRAG_CACHE_LEN)
   local->frag_next_idx = 0;

  if (entry->skb != ((void*)0))
   dev_kfree_skb(entry->skb);

  entry->first_frag_time = jiffies;
  entry->seq = seq;
  entry->last_frag = frag;
  entry->skb = skb;
  memcpy(entry->src_addr, hdr->addr2, ETH_ALEN);
  memcpy(entry->dst_addr, hdr->addr1, ETH_ALEN);
 } else {


  entry = prism2_frag_cache_find(local, seq, frag, hdr->addr2,
            hdr->addr1);
  if (entry != ((void*)0)) {
   entry->last_frag = frag;
   skb = entry->skb;
  }
 }

 return skb;
}
