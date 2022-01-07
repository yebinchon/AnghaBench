
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txentry_desc {scalar_t__ iv_len; scalar_t__ length; scalar_t__ iv_offset; } ;
struct skb_frame_desc {int flags; int iv; } ;
struct sk_buff {scalar_t__ data; } ;


 int SKBDESC_IV_STRIPPED ;
 struct skb_frame_desc* get_skb_frame_desc (struct sk_buff*) ;
 int memcpy (int ,scalar_t__,scalar_t__) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

void rt2x00crypto_tx_remove_iv(struct sk_buff *skb, struct txentry_desc *txdesc)
{
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(skb);

 if (unlikely(!txdesc->iv_len))
  return;


 memcpy(skbdesc->iv, skb->data + txdesc->iv_offset, txdesc->iv_len);


 memmove(skb->data + txdesc->iv_len, skb->data, txdesc->iv_offset);


 skb_pull(skb, txdesc->iv_len);
 txdesc->length -= txdesc->iv_len;


 skbdesc->flags |= SKBDESC_IV_STRIPPED;
}
