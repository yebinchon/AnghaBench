
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {unsigned char* transfer_buffer; int transfer_buffer_length; int number_of_packets; int dev; TYPE_1__* iso_frame_desc; } ;
struct st5481_b_out {int flow_event; int hdlc_state; struct sk_buff* tx_skb; struct urb** urb; int busy; } ;
struct st5481_bcs {int channel; scalar_t__ mode; struct st5481_adapter* adapter; struct st5481_b_out b_out; } ;
struct st5481_adapter {int usb_dev; } ;
struct sk_buff {int len; unsigned char* data; scalar_t__ truesize; } ;
struct TYPE_2__ {unsigned int offset; unsigned int length; } ;


 int B_FLOW_ADJUST ;
 int B_L1L2 (struct st5481_bcs*,int,void*) ;
 int CONFIRM ;
 int DBG (int,char*,int,int) ;
 int DBG_ISO_PACKET (int,struct urb*) ;
 int DBG_SKB (int,struct sk_buff*) ;
 int GFP_NOIO ;
 scalar_t__ L1_MODE_TRANS ;
 int NUM_ISO_PACKETS_B ;
 int OUT_DOWN ;
 int OUT_UNDERRUN ;
 int OUT_UP ;
 int PH_DATA ;
 int SIZE_ISO_PACKETS_B_OUT ;
 int SUBMIT_URB (struct urb*,int ) ;
 int bitrev8 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ isdnhdlc_encode (int *,unsigned char*,int,int*,unsigned char*,int) ;
 int memset (unsigned char*,int,int) ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ test_and_set_bit (int,int *) ;

__attribute__((used)) static void usb_b_out(struct st5481_bcs *bcs,int buf_nr)
{
 struct st5481_b_out *b_out = &bcs->b_out;
 struct st5481_adapter *adapter = bcs->adapter;
 struct urb *urb;
 unsigned int packet_size,offset;
 int len,buf_size,bytes_sent;
 int i;
 struct sk_buff *skb;

 if (test_and_set_bit(buf_nr, &b_out->busy)) {
  DBG(4,"ep %d urb %d busy",(bcs->channel+1)*2,buf_nr);
  return;
 }
 urb = b_out->urb[buf_nr];


 if(b_out->flow_event & (OUT_DOWN | OUT_UNDERRUN)) {
  buf_size = NUM_ISO_PACKETS_B*SIZE_ISO_PACKETS_B_OUT + B_FLOW_ADJUST;
  packet_size = SIZE_ISO_PACKETS_B_OUT + B_FLOW_ADJUST;
  DBG(4,"B%d,adjust flow,add %d bytes",bcs->channel+1,B_FLOW_ADJUST);
 } else if(b_out->flow_event & OUT_UP){
  buf_size = NUM_ISO_PACKETS_B*SIZE_ISO_PACKETS_B_OUT - B_FLOW_ADJUST;
  packet_size = SIZE_ISO_PACKETS_B_OUT - B_FLOW_ADJUST;
  DBG(4,"B%d,adjust flow,remove %d bytes",bcs->channel+1,B_FLOW_ADJUST);
 } else {
  buf_size = NUM_ISO_PACKETS_B*SIZE_ISO_PACKETS_B_OUT;
  packet_size = 8;
 }
 b_out->flow_event = 0;

 len = 0;
 while (len < buf_size) {
  if ((skb = b_out->tx_skb)) {
   DBG_SKB(0x100, skb);
   DBG(4,"B%d,len=%d",bcs->channel+1,skb->len);

   if (bcs->mode == L1_MODE_TRANS) {
    bytes_sent = buf_size - len;
    if (skb->len < bytes_sent)
     bytes_sent = skb->len;
    {
     register unsigned char *src = skb->data;
     register unsigned char *dest = urb->transfer_buffer+len;
     register unsigned int count;
     for (count = 0; count < bytes_sent; count++)
      *dest++ = bitrev8(*src++);
    }
    len += bytes_sent;
   } else {
    len += isdnhdlc_encode(&b_out->hdlc_state,
             skb->data, skb->len, &bytes_sent,
             urb->transfer_buffer+len, buf_size-len);
   }

   skb_pull(skb, bytes_sent);

   if (!skb->len) {

    b_out->tx_skb = ((void*)0);
    B_L1L2(bcs, PH_DATA | CONFIRM, (void *)(unsigned long) skb->truesize);
    dev_kfree_skb_any(skb);




   }
  } else {
   if (bcs->mode == L1_MODE_TRANS) {
    memset(urb->transfer_buffer+len, 0xff, buf_size-len);
    len = buf_size;
   } else {

    len += isdnhdlc_encode(&b_out->hdlc_state,
             ((void*)0), 0, &bytes_sent,
             urb->transfer_buffer+len, buf_size-len);
   }
  }
 }


 for (i = 0, offset = 0; offset < len; i++) {
  urb->iso_frame_desc[i].offset = offset;
  urb->iso_frame_desc[i].length = packet_size;
  offset += packet_size;
  packet_size = SIZE_ISO_PACKETS_B_OUT;
 }
 urb->transfer_buffer_length = len;
 urb->number_of_packets = i;
 urb->dev = adapter->usb_dev;

 DBG_ISO_PACKET(0x200,urb);

 SUBMIT_URB(urb, GFP_NOIO);
}
