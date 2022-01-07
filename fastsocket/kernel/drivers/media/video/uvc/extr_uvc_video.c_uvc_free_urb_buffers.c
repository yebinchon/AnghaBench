
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_streaming {scalar_t__ urb_size; int ** urb_buffer; int * urb_dma; TYPE_1__* dev; } ;
struct TYPE_2__ {int udev; } ;


 unsigned int UVC_URBS ;
 int usb_buffer_free (int ,scalar_t__,int *,int ) ;

__attribute__((used)) static void uvc_free_urb_buffers(struct uvc_streaming *stream)
{
 unsigned int i;

 for (i = 0; i < UVC_URBS; ++i) {
  if (stream->urb_buffer[i]) {
   usb_buffer_free(stream->dev->udev, stream->urb_size,
    stream->urb_buffer[i], stream->urb_dma[i]);
   stream->urb_buffer[i] = ((void*)0);
  }
 }

 stream->urb_size = 0;
}
