
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct urb {int transfer_buffer_length; int actual_length; int * transfer_buffer; scalar_t__ status; struct pd_dvb_adapter* context; } ;
struct dvb_demux {int dummy; } ;
struct pd_dvb_adapter {int is_streaming; struct dvb_demux demux; } ;
typedef scalar_t__ s32 ;


 scalar_t__ EPROTO ;
 int GFP_ATOMIC ;
 int dvb_dmx_swfilter (struct dvb_demux*,int *,int) ;
 int log (char*,scalar_t__) ;
 int strncmp (int *,char*,int) ;
 scalar_t__ usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void dvb_urb_irq(struct urb *urb)
{
 struct pd_dvb_adapter *pd_dvb = urb->context;
 int len = urb->transfer_buffer_length;
 struct dvb_demux *demux = &pd_dvb->demux;
 s32 ret;

 if (!pd_dvb->is_streaming || urb->status) {
  if (urb->status == -EPROTO)
   goto resend;
  return;
 }

 if (urb->actual_length == len)
  dvb_dmx_swfilter(demux, urb->transfer_buffer, len);
 else if (urb->actual_length == len - 4) {
  int offset;
  u8 *buf = urb->transfer_buffer;





  for (offset = 456; offset < len; offset += 512) {
   if (!strncmp(buf + offset, "DVHS", 4)) {
    dvb_dmx_swfilter(demux, buf, offset);
    if (len > offset + 52 + 4) {

     buf += offset + 52;
     len -= offset + 52 + 4;
     dvb_dmx_swfilter(demux, buf, len);
    }
    break;
   }
  }
 }

resend:
 ret = usb_submit_urb(urb, GFP_ATOMIC);
 if (ret)
  log(" usb_submit_urb failed: error %d", ret);
}
