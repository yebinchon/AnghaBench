
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct skb_frag_struct {int size; int page_offset; } ;
struct sk_buff {int len; int data_len; int truesize; int tail; } ;
struct TYPE_2__ {struct skb_frag_struct* frags; int nr_frags; } ;


 int MXGEFW_PAD ;
 int memcpy (struct skb_frag_struct*,struct skb_frag_struct*,int) ;
 int skb_copy_to_linear_data (struct sk_buff*,int *,int) ;
 int skb_pull (struct sk_buff*,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline void
myri10ge_rx_skb_build(struct sk_buff *skb, u8 * va,
        struct skb_frag_struct *rx_frags, int len, int hlen)
{
 struct skb_frag_struct *skb_frags;

 skb->len = skb->data_len = len;
 skb->truesize = len + sizeof(struct sk_buff);


 skb_frags = skb_shinfo(skb)->frags;
 while (len > 0) {
  memcpy(skb_frags, rx_frags, sizeof(*skb_frags));
  len -= rx_frags->size;
  skb_frags++;
  rx_frags++;
  skb_shinfo(skb)->nr_frags++;
 }





 skb_copy_to_linear_data(skb, va, hlen);
 skb_shinfo(skb)->frags[0].page_offset += hlen;
 skb_shinfo(skb)->frags[0].size -= hlen;
 skb->data_len -= hlen;
 skb->tail += hlen;
 skb_pull(skb, MXGEFW_PAD);
}
