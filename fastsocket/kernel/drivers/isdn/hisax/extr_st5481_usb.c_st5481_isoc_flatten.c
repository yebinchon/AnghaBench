
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_iso_packet_descriptor {scalar_t__ status; unsigned int actual_length; int offset; } ;
struct urb {scalar_t__ status; size_t number_of_packets; unsigned char* transfer_buffer; struct usb_iso_packet_descriptor* iso_frame_desc; } ;



__attribute__((used)) static int st5481_isoc_flatten(struct urb *urb)
{
 struct usb_iso_packet_descriptor *pipd,*pend;
 unsigned char *src,*dst;
 unsigned int len;

 if (urb->status < 0) {
  return urb->status;
 }
 for (pipd = &urb->iso_frame_desc[0],
       pend = &urb->iso_frame_desc[urb->number_of_packets],
       dst = urb->transfer_buffer;
      pipd < pend;
      pipd++) {

  if (pipd->status < 0) {
   return (pipd->status);
  }

  len = pipd->actual_length;
  pipd->actual_length = 0;
  src = urb->transfer_buffer+pipd->offset;

  if (src != dst) {

   while (len--) {
    *dst++ = *src++;
   }
  } else {

   dst += len;
  }
 }

 return (dst - (unsigned char *)urb->transfer_buffer);
}
