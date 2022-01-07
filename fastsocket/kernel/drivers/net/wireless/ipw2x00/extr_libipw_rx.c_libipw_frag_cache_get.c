
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct libipw_hdr_4addr {int addr1; int addr2; int seq_ctl; } ;
struct libipw_frag_entry {unsigned int seq; unsigned int last_frag; struct sk_buff* skb; int dst_addr; int src_addr; int first_frag_time; } ;
struct libipw_device {size_t frag_next_idx; struct libipw_frag_entry* frag_cache; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 scalar_t__ ETH_ALEN ;
 size_t LIBIPW_FRAG_CACHE_LEN ;
 unsigned int WLAN_GET_SEQ_FRAG (int ) ;
 unsigned int WLAN_GET_SEQ_SEQ (int ) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int jiffies ;
 int le16_to_cpu (int ) ;
 struct libipw_frag_entry* libipw_frag_cache_find (struct libipw_device*,unsigned int,unsigned int,int ,int ) ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static struct sk_buff *libipw_frag_cache_get(struct libipw_device *ieee,
      struct libipw_hdr_4addr *hdr)
{
 struct sk_buff *skb = ((void*)0);
 u16 sc;
 unsigned int frag, seq;
 struct libipw_frag_entry *entry;

 sc = le16_to_cpu(hdr->seq_ctl);
 frag = WLAN_GET_SEQ_FRAG(sc);
 seq = WLAN_GET_SEQ_SEQ(sc);

 if (frag == 0) {

  skb = dev_alloc_skb(ieee->dev->mtu +
        sizeof(struct libipw_hdr_4addr) +
        8 +
        2 +
        8 + ETH_ALEN );
  if (skb == ((void*)0))
   return ((void*)0);

  entry = &ieee->frag_cache[ieee->frag_next_idx];
  ieee->frag_next_idx++;
  if (ieee->frag_next_idx >= LIBIPW_FRAG_CACHE_LEN)
   ieee->frag_next_idx = 0;

  if (entry->skb != ((void*)0))
   dev_kfree_skb_any(entry->skb);

  entry->first_frag_time = jiffies;
  entry->seq = seq;
  entry->last_frag = frag;
  entry->skb = skb;
  memcpy(entry->src_addr, hdr->addr2, ETH_ALEN);
  memcpy(entry->dst_addr, hdr->addr1, ETH_ALEN);
 } else {


  entry = libipw_frag_cache_find(ieee, seq, frag, hdr->addr2,
        hdr->addr1);
  if (entry != ((void*)0)) {
   entry->last_frag = frag;
   skb = entry->skb;
  }
 }

 return skb;
}
