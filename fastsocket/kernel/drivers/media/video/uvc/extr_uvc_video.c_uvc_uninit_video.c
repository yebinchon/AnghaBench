
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_streaming {struct urb** urb; } ;
struct urb {int dummy; } ;


 unsigned int UVC_URBS ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;
 int uvc_free_urb_buffers (struct uvc_streaming*) ;

__attribute__((used)) static void uvc_uninit_video(struct uvc_streaming *stream, int free_buffers)
{
 struct urb *urb;
 unsigned int i;

 for (i = 0; i < UVC_URBS; ++i) {
  urb = stream->urb[i];
  if (urb == ((void*)0))
   continue;

  usb_kill_urb(urb);
  usb_free_urb(urb);
  stream->urb[i] = ((void*)0);
 }

 if (free_buffers)
  uvc_free_urb_buffers(stream);
}
