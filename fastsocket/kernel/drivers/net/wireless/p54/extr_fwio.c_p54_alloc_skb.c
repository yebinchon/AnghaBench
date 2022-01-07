
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct p54_hdr {scalar_t__ rts_tries; scalar_t__ tries; void* type; void* len; void* flags; } ;
struct p54_common {int tx_hdr_len; int tx_pending; } ;
typedef int gfp_t ;


 size_t P54_MAX_CTRL_FRAME_LEN ;
 struct sk_buff* __dev_alloc_skb (int ,int ) ;
 void* cpu_to_le16 (int) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_queue_len (int *) ;
 int skb_reserve (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *p54_alloc_skb(struct p54_common *priv, u16 hdr_flags,
         u16 payload_len, u16 type, gfp_t memflags)
{
 struct p54_hdr *hdr;
 struct sk_buff *skb;
 size_t frame_len = sizeof(*hdr) + payload_len;

 if (frame_len > P54_MAX_CTRL_FRAME_LEN)
  return ((void*)0);

 if (unlikely(skb_queue_len(&priv->tx_pending) > 64))
  return ((void*)0);

 skb = __dev_alloc_skb(priv->tx_hdr_len + frame_len, memflags);
 if (!skb)
  return ((void*)0);
 skb_reserve(skb, priv->tx_hdr_len);

 hdr = (struct p54_hdr *) skb_put(skb, sizeof(*hdr));
 hdr->flags = cpu_to_le16(hdr_flags);
 hdr->len = cpu_to_le16(payload_len);
 hdr->type = cpu_to_le16(type);
 hdr->tries = hdr->rts_tries = 0;
 return skb;
}
