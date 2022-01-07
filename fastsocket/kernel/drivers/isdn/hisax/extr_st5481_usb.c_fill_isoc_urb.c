
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_complete_t ;
struct usb_device {int dummy; } ;
struct urb {unsigned int pipe; int interval; int number_of_packets; int transfer_buffer_length; TYPE_1__* iso_frame_desc; int transfer_flags; void* context; int complete; scalar_t__ actual_length; void* transfer_buffer; struct usb_device* dev; } ;
struct TYPE_2__ {int offset; int length; scalar_t__ actual_length; } ;


 int URB_ISO_ASAP ;

__attribute__((used)) static void
fill_isoc_urb(struct urb *urb, struct usb_device *dev,
       unsigned int pipe, void *buf, int num_packets,
       int packet_size, usb_complete_t complete,
       void *context)
{
 int k;

 urb->dev=dev;
 urb->pipe=pipe;
 urb->interval = 1;
 urb->transfer_buffer=buf;
 urb->number_of_packets = num_packets;
 urb->transfer_buffer_length=num_packets*packet_size;
 urb->actual_length = 0;
 urb->complete=complete;
 urb->context=context;
 urb->transfer_flags=URB_ISO_ASAP;
 for (k = 0; k < num_packets; k++) {
  urb->iso_frame_desc[k].offset = packet_size * k;
  urb->iso_frame_desc[k].length = packet_size;
  urb->iso_frame_desc[k].actual_length = 0;
 }
}
