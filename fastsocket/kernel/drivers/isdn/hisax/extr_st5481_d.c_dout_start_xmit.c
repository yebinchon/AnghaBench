
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_buffer_length; int number_of_packets; int transfer_flags; int dev; TYPE_1__* iso_frame_desc; int transfer_buffer; } ;
struct st5481_d_out {struct sk_buff* tx_skb; int fsm; int hdlc_state; struct urb** urb; int busy; } ;
struct st5481_adapter {int usb_dev; struct st5481_d_out d_out; } ;
struct sk_buff {int len; int data; } ;
struct FsmInst {struct st5481_adapter* userdata; } ;
struct TYPE_2__ {int length; scalar_t__ offset; } ;


 int CONFIRM ;
 int DBG (int,char*,int ) ;
 int DBG_ISO_PACKET (int,struct urb*) ;
 int DBG_SKB (int,struct sk_buff*) ;
 int D_L1L2 (struct st5481_adapter*,int,int *) ;
 int EP_D_OUT ;
 int FsmChangeState (int *,int ) ;
 int GFP_KERNEL ;
 int HDLC_BITREVERSE ;
 int HDLC_DCHANNEL ;
 int PH_DATA ;
 int ST_DOUT_LONG_INIT ;
 int ST_DOUT_SHORT_INIT ;
 int SUBMIT_URB (struct urb*,int ) ;
 int URB_ISO_ASAP ;
 int WARNING (char*,int ,int,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int isdnhdlc_encode (int *,int ,int ,int*,int ,int) ;
 int isdnhdlc_out_init (int *,int) ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ test_and_set_bit (int,int *) ;

__attribute__((used)) static void dout_start_xmit(struct FsmInst *fsm, int event, void *arg)
{

 struct st5481_adapter *adapter = fsm->userdata;
 struct st5481_d_out *d_out = &adapter->d_out;
 struct urb *urb;
 int len, bytes_sent;
 struct sk_buff *skb;
 int buf_nr = 0;

 skb = d_out->tx_skb;

 DBG(2,"len=%d",skb->len);

 isdnhdlc_out_init(&d_out->hdlc_state, HDLC_DCHANNEL | HDLC_BITREVERSE);

 if (test_and_set_bit(buf_nr, &d_out->busy)) {
  WARNING("ep %d urb %d busy %#lx", EP_D_OUT, buf_nr, d_out->busy);
  return;
 }
 urb = d_out->urb[buf_nr];

 DBG_SKB(0x10, skb);
 len = isdnhdlc_encode(&d_out->hdlc_state,
         skb->data, skb->len, &bytes_sent,
         urb->transfer_buffer, 16);
 skb_pull(skb, bytes_sent);

 if(len < 16)
  FsmChangeState(&d_out->fsm, ST_DOUT_SHORT_INIT);
 else
  FsmChangeState(&d_out->fsm, ST_DOUT_LONG_INIT);

 if (skb->len == 0) {
  d_out->tx_skb = ((void*)0);
  D_L1L2(adapter, PH_DATA | CONFIRM, ((void*)0));
  dev_kfree_skb_any(skb);
 }


 urb->transfer_buffer_length = len;

 urb->iso_frame_desc[0].offset = 0;
 urb->iso_frame_desc[0].length = len;
 urb->number_of_packets = 1;


 urb->dev = adapter->usb_dev;
 urb->transfer_flags = URB_ISO_ASAP;

 DBG_ISO_PACKET(0x20,urb);
 SUBMIT_URB(urb, GFP_KERNEL);
}
