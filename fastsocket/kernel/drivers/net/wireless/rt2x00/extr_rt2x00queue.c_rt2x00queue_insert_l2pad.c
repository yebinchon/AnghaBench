
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; scalar_t__ data; } ;


 unsigned int ALIGN_SIZE (struct sk_buff*,unsigned int) ;
 unsigned int L2PAD_SIZE (unsigned int) ;
 int memmove (scalar_t__,scalar_t__,unsigned int) ;
 int skb_push (struct sk_buff*,unsigned int) ;
 int skb_trim (struct sk_buff*,unsigned int) ;

void rt2x00queue_insert_l2pad(struct sk_buff *skb, unsigned int header_length)
{
 unsigned int payload_length = skb->len - header_length;
 unsigned int header_align = ALIGN_SIZE(skb, 0);
 unsigned int payload_align = ALIGN_SIZE(skb, header_length);
 unsigned int l2pad = payload_length ? L2PAD_SIZE(header_length) : 0;





 if (payload_align > header_align)
  header_align += 4;


 if (!header_align)
  return;


 skb_push(skb, header_align);




 memmove(skb->data, skb->data + header_align, header_length);


 if (payload_length && payload_align)
  memmove(skb->data + header_length + l2pad,
   skb->data + header_length + l2pad + payload_align,
   payload_length);


 skb_trim(skb, header_length + l2pad + payload_length);
}
