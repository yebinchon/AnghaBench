
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
struct skb_frag_struct {unsigned int page_offset; } ;
struct sk_buff {unsigned int data_len; unsigned int tail; int len; } ;
struct igb_ring {int q_vector; } ;
struct TYPE_2__ {struct skb_frag_struct* frags; } ;


 int ALIGN (unsigned int,int) ;
 int E1000_RXDADV_STAT_TSIP ;
 int IGB_RX_HDR_LEN ;
 unsigned int IGB_TS_HDR_LEN ;
 unsigned int igb_get_headlen (unsigned char*,int ) ;
 int igb_ptp_rx_pktstamp (int ,unsigned char*,struct sk_buff*) ;
 scalar_t__ igb_test_staterr (union e1000_adv_rx_desc*,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,unsigned char*,int ) ;
 unsigned char* skb_frag_address (struct skb_frag_struct*) ;
 int skb_frag_size_sub (struct skb_frag_struct*,unsigned int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void igb_pull_tail(struct igb_ring *rx_ring,
     union e1000_adv_rx_desc *rx_desc,
     struct sk_buff *skb)
{
 struct skb_frag_struct *frag = &skb_shinfo(skb)->frags[0];
 unsigned char *va;
 unsigned int pull_len;





 va = skb_frag_address(frag);

 if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {

  igb_ptp_rx_pktstamp(rx_ring->q_vector, va, skb);


  skb_frag_size_sub(frag, IGB_TS_HDR_LEN);
  frag->page_offset += IGB_TS_HDR_LEN;
  skb->data_len -= IGB_TS_HDR_LEN;
  skb->len -= IGB_TS_HDR_LEN;


  va += IGB_TS_HDR_LEN;
 }




 pull_len = igb_get_headlen(va, IGB_RX_HDR_LEN);


 skb_copy_to_linear_data(skb, va, ALIGN(pull_len, sizeof(long)));


 skb_frag_size_sub(frag, pull_len);
 frag->page_offset += pull_len;
 skb->data_len -= pull_len;
 skb->tail += pull_len;
}
