
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int xid; } ;
struct sk_buff {int len; int data; scalar_t__ head; } ;
struct nc_trailer {int packet_id; } ;
struct nc_header {void* packet_id; void* packet_len; void* hdr_len; } ;
typedef int gfp_t ;


 int PAD_BYTE ;
 void* cpu_to_le16 (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int devdbg (struct usbnet*,char*,void*,void*,void*) ;
 int memmove (scalar_t__,int ,int) ;
 int put_unaligned (void*,int *) ;
 int skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int,int,int ) ;
 int skb_headroom (struct sk_buff*) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int * skb_put (struct sk_buff*,int) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *
net1080_tx_fixup(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
 struct sk_buff *skb2;
 struct nc_header *header = ((void*)0);
 struct nc_trailer *trailer = ((void*)0);
 int padlen = sizeof (struct nc_trailer);
 int len = skb->len;

 if (!((len + padlen + sizeof (struct nc_header)) & 0x01))
  padlen++;
 if (!skb_cloned(skb)) {
  int headroom = skb_headroom(skb);
  int tailroom = skb_tailroom(skb);

  if (padlen <= tailroom &&
      sizeof(struct nc_header) <= headroom)

   goto encapsulate;

  if ((sizeof (struct nc_header) + padlen) <
    (headroom + tailroom)) {

   skb->data = memmove(skb->head
      + sizeof (struct nc_header),
         skb->data, skb->len);
   skb_set_tail_pointer(skb, len);
   goto encapsulate;
  }
 }


 skb2 = skb_copy_expand(skb,
    sizeof (struct nc_header),
    padlen,
    flags);
 dev_kfree_skb_any(skb);
 if (!skb2)
  return skb2;
 skb = skb2;

encapsulate:

 header = (struct nc_header *) skb_push(skb, sizeof *header);
 header->hdr_len = cpu_to_le16(sizeof (*header));
 header->packet_len = cpu_to_le16(len);
 header->packet_id = cpu_to_le16((u16)dev->xid++);


 if (!((skb->len + sizeof *trailer) & 0x01))
  *skb_put(skb, 1) = PAD_BYTE;
 trailer = (struct nc_trailer *) skb_put(skb, sizeof *trailer);
 put_unaligned(header->packet_id, &trailer->packet_id);





 return skb;
}
