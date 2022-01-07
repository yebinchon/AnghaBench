
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ov511 {scalar_t__ curframe; scalar_t__ bclass; int bridge; scalar_t__ dev; int wq; int streaming; int user; } ;
struct urb {int number_of_packets; unsigned char* transfer_buffer; scalar_t__ dev; TYPE_1__* iso_frame_desc; int status; struct ov511_sbuf* context; } ;
struct ov511_sbuf {int n; struct usb_ov511* ov; } ;
struct TYPE_2__ {int actual_length; int status; int offset; } ;


 scalar_t__ BCL_OV511 ;
 scalar_t__ BCL_OV518 ;
 int ECONNRESET ;
 int EINPROGRESS ;
 int ENOENT ;
 int GFP_ATOMIC ;
 int PDEBUG (int,char*,...) ;
 int err (char*,int,...) ;
 int ov511_move_data (struct usb_ov511*,unsigned char*,int) ;
 int ov518_move_data (struct usb_ov511*,unsigned char*,int) ;
 int symbolic (int ,int ) ;
 int urb_errlist ;
 int usb_submit_urb (struct urb*,int ) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
ov51x_isoc_irq(struct urb *urb)
{
 int i;
 struct usb_ov511 *ov;
 struct ov511_sbuf *sbuf;

 if (!urb->context) {
  PDEBUG(4, "no context");
  return;
 }

 sbuf = urb->context;
 ov = sbuf->ov;

 if (!ov || !ov->dev || !ov->user) {
  PDEBUG(4, "no device, or not open");
  return;
 }

 if (!ov->streaming) {
  PDEBUG(4, "hmmm... not streaming, but got interrupt");
  return;
 }

 if (urb->status == -ENOENT || urb->status == -ECONNRESET) {
  PDEBUG(4, "URB unlinked");
  return;
 }

 if (urb->status != -EINPROGRESS && urb->status != 0) {
  err("ERROR: urb->status=%d: %s", urb->status,
      symbolic(urb_errlist, urb->status));
 }


 PDEBUG(5, "sbuf[%d]: Moving %d packets", sbuf->n,
        urb->number_of_packets);
 for (i = 0; i < urb->number_of_packets; i++) {

  if (ov->curframe >= 0) {
   int n = urb->iso_frame_desc[i].actual_length;
   int st = urb->iso_frame_desc[i].status;
   unsigned char *cdata;

   urb->iso_frame_desc[i].actual_length = 0;
   urb->iso_frame_desc[i].status = 0;

   cdata = urb->transfer_buffer
    + urb->iso_frame_desc[i].offset;

   if (!n) {
    PDEBUG(4, "Zero-length packet");
    continue;
   }

   if (st)
    PDEBUG(2, "data error: [%d] len=%d, status=%d",
           i, n, st);

   if (ov->bclass == BCL_OV511)
    ov511_move_data(ov, cdata, n);
   else if (ov->bclass == BCL_OV518)
    ov518_move_data(ov, cdata, n);
   else
    err("Unknown bridge device (%d)", ov->bridge);

  } else if (waitqueue_active(&ov->wq)) {
   wake_up_interruptible(&ov->wq);
  }
 }


 urb->dev = ov->dev;
 if ((i = usb_submit_urb(urb, GFP_ATOMIC)) != 0)
  err("usb_submit_urb() ret %d", i);

 return;
}
