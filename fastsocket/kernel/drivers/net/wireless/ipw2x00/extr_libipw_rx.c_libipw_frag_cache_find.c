
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct libipw_frag_entry {unsigned int seq; int last_frag; int dst_addr; int src_addr; int * skb; scalar_t__ first_frag_time; } ;
struct libipw_device {struct libipw_frag_entry* frag_cache; } ;


 int HZ ;
 int LIBIPW_DEBUG_FRAG (char*,unsigned int,int) ;
 int LIBIPW_FRAG_CACHE_LEN ;
 int dev_kfree_skb_any (int *) ;
 scalar_t__ ether_addr_equal (int ,int *) ;
 int jiffies ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static struct libipw_frag_entry *libipw_frag_cache_find(struct
             libipw_device
             *ieee,
             unsigned int seq,
             unsigned int frag,
             u8 * src,
             u8 * dst)
{
 struct libipw_frag_entry *entry;
 int i;

 for (i = 0; i < LIBIPW_FRAG_CACHE_LEN; i++) {
  entry = &ieee->frag_cache[i];
  if (entry->skb != ((void*)0) &&
      time_after(jiffies, entry->first_frag_time + 2 * HZ)) {
   LIBIPW_DEBUG_FRAG("expiring fragment cache entry "
          "seq=%u last_frag=%u\n",
          entry->seq, entry->last_frag);
   dev_kfree_skb_any(entry->skb);
   entry->skb = ((void*)0);
  }

  if (entry->skb != ((void*)0) && entry->seq == seq &&
      (entry->last_frag + 1 == frag || frag == -1) &&
      ether_addr_equal(entry->src_addr, src) &&
      ether_addr_equal(entry->dst_addr, dst))
   return entry;
 }

 return ((void*)0);
}
