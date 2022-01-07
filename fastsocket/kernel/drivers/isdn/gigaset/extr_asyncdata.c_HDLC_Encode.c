
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; int len; int head; } ;
typedef int __u16 ;


 unsigned char PPP_ESCAPE ;
 unsigned char PPP_FLAG ;
 int PPP_INITFCS ;
 unsigned char PPP_TRANS ;
 int crc_ccitt_byte (int,int ) ;
 struct sk_buff* dev_alloc_skb (unsigned int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ muststuff (unsigned char) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *HDLC_Encode(struct sk_buff *skb, int head, int tail)
{
 struct sk_buff *hdlc_skb;
 __u16 fcs;
 unsigned char c;
 unsigned char *cp;
 int len;
 unsigned int stuf_cnt;

 stuf_cnt = 0;
 fcs = PPP_INITFCS;
 cp = skb->data;
 len = skb->len;
 while (len--) {
  if (muststuff(*cp))
   stuf_cnt++;
  fcs = crc_ccitt_byte(fcs, *cp++);
 }
 fcs ^= 0xffff;




 hdlc_skb = dev_alloc_skb(skb->len + stuf_cnt + 6 + tail + head);
 if (!hdlc_skb) {
  dev_kfree_skb(skb);
  return ((void*)0);
 }
 skb_reserve(hdlc_skb, head);


 memcpy(hdlc_skb->head, skb->head, 2);


 *(skb_put(hdlc_skb, 1)) = PPP_FLAG;


 while (skb->len--) {
  if (muststuff(*skb->data)) {
   *(skb_put(hdlc_skb, 1)) = PPP_ESCAPE;
   *(skb_put(hdlc_skb, 1)) = (*skb->data++) ^ PPP_TRANS;
  } else
   *(skb_put(hdlc_skb, 1)) = *skb->data++;
 }


 c = (fcs & 0x00ff);
 if (muststuff(c)) {
  *(skb_put(hdlc_skb, 1)) = PPP_ESCAPE;
  c ^= PPP_TRANS;
 }
 *(skb_put(hdlc_skb, 1)) = c;

 c = ((fcs >> 8) & 0x00ff);
 if (muststuff(c)) {
  *(skb_put(hdlc_skb, 1)) = PPP_ESCAPE;
  c ^= PPP_TRANS;
 }
 *(skb_put(hdlc_skb, 1)) = c;

 *(skb_put(hdlc_skb, 1)) = PPP_FLAG;

 dev_kfree_skb(skb);
 return hdlc_skb;
}
