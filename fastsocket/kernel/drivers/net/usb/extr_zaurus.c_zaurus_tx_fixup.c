
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int dummy; } ;
struct sk_buff {int len; int data; } ;
typedef int gfp_t ;


 int crc32_le (int ,int ,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int ,int,int ) ;
 int* skb_put (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *
zaurus_tx_fixup(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
 int padlen;
 struct sk_buff *skb2;

 padlen = 2;
 if (!skb_cloned(skb)) {
  int tailroom = skb_tailroom(skb);
  if ((padlen + 4) <= tailroom)
   goto done;
 }
 skb2 = skb_copy_expand(skb, 0, 4 + padlen, flags);
 dev_kfree_skb_any(skb);
 skb = skb2;
 if (skb) {
  u32 fcs;
done:
  fcs = crc32_le(~0, skb->data, skb->len);
  fcs = ~fcs;

  *skb_put (skb, 1) = fcs & 0xff;
  *skb_put (skb, 1) = (fcs>> 8) & 0xff;
  *skb_put (skb, 1) = (fcs>>16) & 0xff;
  *skb_put (skb, 1) = (fcs>>24) & 0xff;
 }
 return skb;
}
