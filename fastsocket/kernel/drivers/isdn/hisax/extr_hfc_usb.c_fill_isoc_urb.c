
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_complete_t ;
struct usb_device {int dummy; } ;
struct urb {unsigned int pipe; int number_of_packets; int transfer_buffer_length; int interval; TYPE_1__* iso_frame_desc; scalar_t__ actual_length; int transfer_flags; void* transfer_buffer; void* context; int complete; struct usb_device* dev; } ;
struct TYPE_2__ {int offset; int length; scalar_t__ actual_length; } ;


 int URB_ISO_ASAP ;

__attribute__((used)) static void
fill_isoc_urb(struct urb *urb, struct usb_device *dev, unsigned int pipe,
       void *buf, int num_packets, int packet_size, int interval,
       usb_complete_t complete, void *context)
{
 int k;

 urb->dev = dev;
 urb->pipe = pipe;
 urb->complete = complete;
 urb->number_of_packets = num_packets;
 urb->transfer_buffer_length = packet_size * num_packets;
 urb->context = context;
 urb->transfer_buffer = buf;
 urb->transfer_flags = URB_ISO_ASAP;
 urb->actual_length = 0;
 urb->interval = interval;
 for (k = 0; k < num_packets; k++) {
  urb->iso_frame_desc[k].offset = packet_size * k;
  urb->iso_frame_desc[k].length = packet_size;
  urb->iso_frame_desc[k].actual_length = 0;
 }
}
