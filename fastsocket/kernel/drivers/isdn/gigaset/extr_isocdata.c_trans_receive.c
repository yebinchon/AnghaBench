
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_5__ {TYPE_1__* bas; } ;
struct bc_state {struct sk_buff* skb; TYPE_3__* cs; TYPE_2__ hw; int ignore; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int goodbytes; } ;


 int DEBUG_STREAM_DUMP ;
 scalar_t__ HW_HDR_LEN ;
 scalar_t__ SBUFSIZE ;
 int TRANSBUFSIZE ;
 int bitrev8 (int ) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_err (int ,char*) ;
 int dump_bytes (int ,char*,int ,int) ;
 int gigaset_rcv_skb (struct sk_buff*,TYPE_3__*,struct bc_state*) ;
 int hdlc_flush (struct bc_state*) ;
 unsigned char* skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void trans_receive(unsigned char *src, unsigned count,
     struct bc_state *bcs)
{
 struct sk_buff *skb;
 int dobytes;
 unsigned char *dst;

 if (unlikely(bcs->ignore)) {
  bcs->ignore--;
  hdlc_flush(bcs);
  return;
 }
 if (unlikely((skb = bcs->skb) == ((void*)0))) {
  bcs->skb = skb = dev_alloc_skb(SBUFSIZE + HW_HDR_LEN);
  if (!skb) {
   dev_err(bcs->cs->dev, "could not allocate skb\n");
   return;
  }
  skb_reserve(skb, HW_HDR_LEN);
 }
 bcs->hw.bas->goodbytes += skb->len;
 dobytes = TRANSBUFSIZE - skb->len;
 while (count > 0) {
  dst = skb_put(skb, count < dobytes ? count : dobytes);
  while (count > 0 && dobytes > 0) {
   *dst++ = bitrev8(*src++);
   count--;
   dobytes--;
  }
  if (dobytes == 0) {
   dump_bytes(DEBUG_STREAM_DUMP,
       "rcv data", skb->data, skb->len);
   gigaset_rcv_skb(skb, bcs->cs, bcs);
   bcs->skb = skb = dev_alloc_skb(SBUFSIZE + HW_HDR_LEN);
   if (!skb) {
    dev_err(bcs->cs->dev,
     "could not allocate skb\n");
    return;
   }
   skb_reserve(bcs->skb, HW_HDR_LEN);
   dobytes = TRANSBUFSIZE;
  }
 }
}
