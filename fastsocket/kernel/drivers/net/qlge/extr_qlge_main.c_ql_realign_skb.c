
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int tail; void* data; } ;


 scalar_t__ NET_IP_ALIGN ;
 scalar_t__ QLGE_SB_PAD ;
 int skb_copy_to_linear_data (struct sk_buff*,void*,unsigned int) ;

__attribute__((used)) static void ql_realign_skb(struct sk_buff *skb, int len)
{
 void *temp_addr = skb->data;





 skb->data -= QLGE_SB_PAD - NET_IP_ALIGN;
 skb->tail -= QLGE_SB_PAD - NET_IP_ALIGN;
 skb_copy_to_linear_data(skb, temp_addr,
  (unsigned int)len);
}
