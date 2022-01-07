
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txentry_desc {int iv_len; scalar_t__ iv_offset; } ;
struct skb_frame_desc {int iv; } ;
struct sk_buff {scalar_t__ data; } ;


 struct skb_frame_desc* get_skb_frame_desc (struct sk_buff*) ;
 int memcpy (int ,scalar_t__,int ) ;
 scalar_t__ unlikely (int) ;

void rt2x00crypto_tx_copy_iv(struct sk_buff *skb, struct txentry_desc *txdesc)
{
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(skb);

 if (unlikely(!txdesc->iv_len))
  return;


 memcpy(skbdesc->iv, skb->data + txdesc->iv_offset, txdesc->iv_len);
}
