
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_data_stream {int urbs_initialized; int urbs_submitted; int * urb_list; } ;


 int GFP_ATOMIC ;
 int deb_ts (char*,int) ;
 int err (char*,int) ;
 int usb_submit_urb (int ,int ) ;
 int usb_urb_kill (struct usb_data_stream*) ;

int usb_urb_submit(struct usb_data_stream *stream)
{
 int i,ret;
 for (i = 0; i < stream->urbs_initialized; i++) {
  deb_ts("submitting URB no. %d\n",i);
  if ((ret = usb_submit_urb(stream->urb_list[i],GFP_ATOMIC))) {
   err("could not submit URB no. %d - get them all back",i);
   usb_urb_kill(stream);
   return ret;
  }
  stream->urbs_submitted++;
 }
 return 0;
}
