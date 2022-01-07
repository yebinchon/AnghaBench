
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct gl_packet {int * packet_data; int packet_length; } ;
struct gl_header {struct gl_packet packets; int packet_count; } ;


 int GFP_ATOMIC ;
 int GL_MAX_PACKET_LEN ;
 int GL_MAX_TRANSMIT_PACKETS ;
 struct sk_buff* alloc_skb (int,int ) ;
 int dbg (char*,int) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int *,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int usbnet_skb_return (struct usbnet*,struct sk_buff*) ;

__attribute__((used)) static int genelink_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{
 struct gl_header *header;
 struct gl_packet *packet;
 struct sk_buff *gl_skb;
 u32 size;
 u32 count;

 header = (struct gl_header *) skb->data;


 count = le32_to_cpu(header->packet_count);
 if (count > GL_MAX_TRANSMIT_PACKETS) {
  dbg("genelink: invalid received packet count %u", count);
  return 0;
 }


 packet = &header->packets;


 skb_pull(skb, 4);

 while (count > 1) {

  size = le32_to_cpu(packet->packet_length);


  if (size > GL_MAX_PACKET_LEN) {
   dbg("genelink: invalid rx length %d", size);
   return 0;
  }


  gl_skb = alloc_skb(size, GFP_ATOMIC);
  if (gl_skb) {


   memcpy(skb_put(gl_skb, size),
     packet->packet_data, size);
   usbnet_skb_return(dev, gl_skb);
  }


  packet = (struct gl_packet *)&packet->packet_data[size];
  count--;


  skb_pull(skb, size + 4);
 }


 skb_pull(skb, 4);

 if (skb->len > GL_MAX_PACKET_LEN) {
  dbg("genelink: invalid rx length %d", skb->len);
  return 0;
 }
 return 1;
}
