
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct libipw_hdr_4addr {int addr1; int addr2; int seq_ctl; } ;
struct libipw_frag_entry {int * skb; } ;
struct libipw_device {int dummy; } ;


 int LIBIPW_DEBUG_FRAG (char*,unsigned int) ;
 unsigned int WLAN_GET_SEQ_SEQ (int ) ;
 int le16_to_cpu (int ) ;
 struct libipw_frag_entry* libipw_frag_cache_find (struct libipw_device*,unsigned int,int,int ,int ) ;

__attribute__((used)) static int libipw_frag_cache_invalidate(struct libipw_device *ieee,
        struct libipw_hdr_4addr *hdr)
{
 u16 sc;
 unsigned int seq;
 struct libipw_frag_entry *entry;

 sc = le16_to_cpu(hdr->seq_ctl);
 seq = WLAN_GET_SEQ_SEQ(sc);

 entry = libipw_frag_cache_find(ieee, seq, -1, hdr->addr2,
       hdr->addr1);

 if (entry == ((void*)0)) {
  LIBIPW_DEBUG_FRAG("could not invalidate fragment cache "
         "entry (seq=%u)\n", seq);
  return -1;
 }

 entry->skb = ((void*)0);
 return 0;
}
