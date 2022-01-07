
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_data_stream {int urbs_initialized; int ** urb_list; } ;


 int deb_mem (char*,int) ;
 int usb_free_stream_buffers (struct usb_data_stream*) ;
 int usb_free_urb (int *) ;
 int usb_urb_kill (struct usb_data_stream*) ;

int usb_urb_exit(struct usb_data_stream *stream)
{
 int i;

 usb_urb_kill(stream);

 for (i = 0; i < stream->urbs_initialized; i++) {
  if (stream->urb_list[i] != ((void*)0)) {
   deb_mem("freeing URB no. %d.\n",i);

   usb_free_urb(stream->urb_list[i]);
  }
 }
 stream->urbs_initialized = 0;

 usb_free_stream_buffers(stream);
 return 0;
}
