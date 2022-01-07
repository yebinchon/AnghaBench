
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_stv {int rawbufsize; scalar_t__ nullpackets; size_t scratch_next; scalar_t__ udev; int wq; int scratch_overflow; TYPE_1__* scratch; int dropped; int streaming; } ;
struct urb {int actual_length; scalar_t__ dev; scalar_t__ status; scalar_t__ transfer_buffer; struct usb_stv* context; } ;
struct TYPE_2__ {int state; int length; int data; } ;





 int GFP_ATOMIC ;
 int PDEBUG (int,char*,...) ;
 scalar_t__ STV680_MAX_NULLPACKETS ;
 size_t STV680_NUMSCRATCH ;
 int memcpy (int ,unsigned char*,int) ;
 scalar_t__ usb_submit_urb (struct urb*,int ) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void stv680_video_irq (struct urb *urb)
{
 struct usb_stv *stv680 = urb->context;
 int length = urb->actual_length;

 if (length < stv680->rawbufsize)
  PDEBUG (2, "STV(i): Lost data in transfer: exp %li, got %i", stv680->rawbufsize, length);


 if (!stv680->streaming)
  return;

 if (!stv680->udev) {
  PDEBUG (0, "STV(e): device vapourished in video_irq");
  return;
 }




 if (length && !urb->status) {
  stv680->nullpackets = 0;
  switch (stv680->scratch[stv680->scratch_next].state) {
  case 129:
  case 130:
   stv680->dropped++;
   break;

  case 128:
   memcpy (stv680->scratch[stv680->scratch_next].data,
    (unsigned char *) urb->transfer_buffer, length);
   stv680->scratch[stv680->scratch_next].state = 129;
   stv680->scratch[stv680->scratch_next].length = length;
   if (waitqueue_active (&stv680->wq)) {
    wake_up_interruptible (&stv680->wq);
   }
   stv680->scratch_overflow = 0;
   stv680->scratch_next++;
   if (stv680->scratch_next >= STV680_NUMSCRATCH)
    stv680->scratch_next = 0;
   break;
  }
 } else {
  stv680->nullpackets++;
  if (stv680->nullpackets > STV680_MAX_NULLPACKETS) {
   if (waitqueue_active (&stv680->wq)) {
    wake_up_interruptible (&stv680->wq);
   }
  }
 }


 urb->status = 0;
 urb->dev = stv680->udev;
 if (usb_submit_urb (urb, GFP_ATOMIC))
  PDEBUG (0, "STV(e): urb burned down in video irq");
 return;
}
