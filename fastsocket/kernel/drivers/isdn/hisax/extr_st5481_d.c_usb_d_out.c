
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_iso_packet_descriptor {unsigned int offset; int length; } ;
struct urb {int transfer_buffer_length; unsigned int number_of_packets; scalar_t__ transfer_flags; scalar_t__ start_frame; int dev; struct usb_iso_packet_descriptor* iso_frame_desc; int transfer_buffer; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct st5481_d_out {struct sk_buff* tx_skb; TYPE_1__ fsm; int hdlc_state; struct urb** urb; int busy; } ;
struct st5481_adapter {int usb_dev; struct st5481_d_out d_out; } ;
struct sk_buff {int len; int * data; } ;


 int CONFIRM ;
 int DBG (int,char*,int ,int,int ) ;
 int DBG_ISO_PACKET (int,struct urb*) ;
 int D_L1L2 (struct st5481_adapter*,int,int *) ;
 int EP_D_OUT ;
 int FsmChangeState (TYPE_1__*,int ) ;
 int GFP_KERNEL ;
 int NUM_ISO_PACKETS_D ;
 int PH_DATA ;
 int SIZE_ISO_PACKETS_D_OUT ;
 scalar_t__ ST_DOUT_NORMAL ;
 int ST_DOUT_WAIT_FOR_UNDERRUN ;
 int SUBMIT_URB (struct urb*,int ) ;
 scalar_t__ URB_ISO_ASAP ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int isdnhdlc_encode (int *,int *,int ,int*,int ,int) ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ test_and_set_bit (int,int *) ;
 scalar_t__ usb_get_current_frame_number (int ) ;
 scalar_t__ usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void usb_d_out(struct st5481_adapter *adapter, int buf_nr)
{
 struct st5481_d_out *d_out = &adapter->d_out;
 struct urb *urb;
 unsigned int num_packets, packet_offset;
 int len, buf_size, bytes_sent;
 struct sk_buff *skb;
 struct usb_iso_packet_descriptor *desc;

 if (d_out->fsm.state != ST_DOUT_NORMAL)
  return;

 if (test_and_set_bit(buf_nr, &d_out->busy)) {
  DBG(2, "ep %d urb %d busy %#lx", EP_D_OUT, buf_nr, d_out->busy);
  return;
 }
 urb = d_out->urb[buf_nr];

 skb = d_out->tx_skb;

 buf_size = NUM_ISO_PACKETS_D * SIZE_ISO_PACKETS_D_OUT;

 if (skb) {
  len = isdnhdlc_encode(&d_out->hdlc_state,
          skb->data, skb->len, &bytes_sent,
          urb->transfer_buffer, buf_size);
  skb_pull(skb,bytes_sent);
 } else {

  len = isdnhdlc_encode(&d_out->hdlc_state,
          ((void*)0), 0, &bytes_sent,
          urb->transfer_buffer, buf_size);
 }

 if (len < buf_size) {
  FsmChangeState(&d_out->fsm, ST_DOUT_WAIT_FOR_UNDERRUN);
 }
 if (skb && !skb->len) {
  d_out->tx_skb = ((void*)0);
  D_L1L2(adapter, PH_DATA | CONFIRM, ((void*)0));
  dev_kfree_skb_any(skb);
 }


 urb->transfer_buffer_length = len;
 num_packets = 0;
 packet_offset = 0;
 while (packet_offset < len) {
  desc = &urb->iso_frame_desc[num_packets];
  desc->offset = packet_offset;
  desc->length = SIZE_ISO_PACKETS_D_OUT;
  if (len - packet_offset < desc->length)
   desc->length = len - packet_offset;
  num_packets++;
  packet_offset += desc->length;
 }
 urb->number_of_packets = num_packets;


 urb->dev = adapter->usb_dev;

 urb->transfer_flags = 0;
 urb->start_frame = usb_get_current_frame_number(adapter->usb_dev)+2;

 DBG_ISO_PACKET(0x20,urb);

 if (usb_submit_urb(urb, GFP_KERNEL) < 0) {

  urb->transfer_flags = URB_ISO_ASAP;
  SUBMIT_URB(urb, GFP_KERNEL);
 }
}
