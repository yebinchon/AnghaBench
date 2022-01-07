
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skb_frag_struct {unsigned int page_offset; } ;
struct sk_buff {unsigned int data_len; unsigned int tail; } ;
struct ixgbe_ring {int dummy; } ;
struct TYPE_2__ {struct skb_frag_struct* frags; } ;


 int ALIGN (unsigned int,int) ;
 int IXGBE_RX_HDR_SIZE ;
 unsigned int ixgbe_get_headlen (unsigned char*,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,unsigned char*,int ) ;
 unsigned char* skb_frag_address (struct skb_frag_struct*) ;
 int skb_frag_size_sub (struct skb_frag_struct*,unsigned int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void ixgbe_pull_tail(struct ixgbe_ring *rx_ring,
       struct sk_buff *skb)
{
 struct skb_frag_struct *frag = &skb_shinfo(skb)->frags[0];
 unsigned char *va;
 unsigned int pull_len;






 va = skb_frag_address(frag);





 pull_len = ixgbe_get_headlen(va, IXGBE_RX_HDR_SIZE);


 skb_copy_to_linear_data(skb, va, ALIGN(pull_len, sizeof(long)));


 skb_frag_size_sub(frag, pull_len);
 frag->page_offset += pull_len;
 skb->data_len -= pull_len;
 skb->tail += pull_len;
}
