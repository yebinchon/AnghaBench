
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int dummy; } ;
struct sk_buff {int len; int data; scalar_t__ head; } ;
typedef int padbytes ;
typedef int packet_len ;
typedef int gfp_t ;


 int cpu_to_le32s (int*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memcpy (int ,int*,int) ;
 int memmove (scalar_t__,int ,int) ;
 int skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,int*,int) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 int skb_tail_pointer (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *asix_tx_fixup(struct usbnet *dev, struct sk_buff *skb,
     gfp_t flags)
{
 int padlen;
 int headroom = skb_headroom(skb);
 int tailroom = skb_tailroom(skb);
 u32 packet_len;
 u32 padbytes = 0xffff0000;

 padlen = ((skb->len + 4) % 512) ? 0 : 4;

 if ((!skb_cloned(skb))
     && ((headroom + tailroom) >= (4 + padlen))) {
  if ((headroom < 4) || (tailroom < padlen)) {
   skb->data = memmove(skb->head + 4, skb->data, skb->len);
   skb_set_tail_pointer(skb, skb->len);
  }
 } else {
  struct sk_buff *skb2;
  skb2 = skb_copy_expand(skb, 4, padlen, flags);
  dev_kfree_skb_any(skb);
  skb = skb2;
  if (!skb)
   return ((void*)0);
 }

 skb_push(skb, 4);
 packet_len = (((skb->len - 4) ^ 0x0000ffff) << 16) + (skb->len - 4);
 cpu_to_le32s(&packet_len);
 skb_copy_to_linear_data(skb, &packet_len, sizeof(packet_len));

 if ((skb->len % 512) == 0) {
  cpu_to_le32s(&padbytes);
  memcpy(skb_tail_pointer(skb), &padbytes, sizeof(padbytes));
  skb_put(skb, sizeof(padbytes));
 }
 return skb;
}
