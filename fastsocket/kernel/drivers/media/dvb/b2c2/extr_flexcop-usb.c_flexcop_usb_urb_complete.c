
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ actual_length; int number_of_packets; TYPE_1__* iso_frame_desc; scalar_t__ transfer_buffer; int transfer_buffer_length; struct flexcop_usb* context; } ;
struct flexcop_usb {int dummy; } ;
struct TYPE_2__ {scalar_t__ status; scalar_t__ actual_length; scalar_t__ offset; } ;


 int GFP_ATOMIC ;
 int deb_ts (char*,scalar_t__,...) ;
 int err (char*,int,scalar_t__) ;
 int flexcop_usb_process_frame (struct flexcop_usb*,scalar_t__,scalar_t__) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void flexcop_usb_urb_complete(struct urb *urb)
{
 struct flexcop_usb *fc_usb = urb->context;
 int i;

 if (urb->actual_length > 0)
  deb_ts("urb completed, bufsize: %d actlen; %d\n",
   urb->transfer_buffer_length, urb->actual_length);

 for (i = 0; i < urb->number_of_packets; i++) {
  if (urb->iso_frame_desc[i].status < 0) {
   err("iso frame descriptor %d has an error: %d\n", i,
    urb->iso_frame_desc[i].status);
  } else
   if (urb->iso_frame_desc[i].actual_length > 0) {
    deb_ts("passed %d bytes to the demux\n",
     urb->iso_frame_desc[i].actual_length);

    flexcop_usb_process_frame(fc_usb,
     urb->transfer_buffer +
      urb->iso_frame_desc[i].offset,
     urb->iso_frame_desc[i].actual_length);
   }
  urb->iso_frame_desc[i].status = 0;
  urb->iso_frame_desc[i].actual_length = 0;
 }
 usb_submit_urb(urb,GFP_ATOMIC);
}
