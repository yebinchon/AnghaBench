
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct skb_frag_struct {unsigned long page_offset; unsigned long size; } ;
struct sk_buff {unsigned char* data; } ;
struct fc_frame {int dummy; } ;
struct TYPE_2__ {unsigned int nr_frags; struct skb_frag_struct* frags; } ;


 int KM_SKB_DATA_SOFTIRQ ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int crc32 (int ,unsigned char*,unsigned long) ;
 struct sk_buff* fp_skb (struct fc_frame*) ;
 unsigned char* kmap_atomic (scalar_t__,int ) ;
 int kunmap_atomic (unsigned char*,int ) ;
 unsigned long min (unsigned long,scalar_t__) ;
 scalar_t__ skb_frag_page (struct skb_frag_struct*) ;
 unsigned long skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

u32 fcoe_fc_crc(struct fc_frame *fp)
{
 struct sk_buff *skb = fp_skb(fp);
 struct skb_frag_struct *frag;
 unsigned char *data;
 unsigned long off, len, clen;
 u32 crc;
 unsigned i;

 crc = crc32(~0, skb->data, skb_headlen(skb));

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  frag = &skb_shinfo(skb)->frags[i];
  off = frag->page_offset;
  len = frag->size;
  while (len > 0) {
   clen = min(len, PAGE_SIZE - (off & ~PAGE_MASK));
   data = kmap_atomic(
    skb_frag_page(frag) + (off >> PAGE_SHIFT),
    KM_SKB_DATA_SOFTIRQ);
   crc = crc32(crc, data + (off & ~PAGE_MASK), clen);
   kunmap_atomic(data, KM_SKB_DATA_SOFTIRQ);
   off += clen;
   len -= clen;
  }
 }
 return crc;
}
