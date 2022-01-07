
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {int submitted_cmds; struct urb* urb_async_waiting; } ;
struct urb {int transfer_flags; } ;


 int GFP_KERNEL ;
 int URB_NO_INTERRUPT ;
 int dev_dbg_f (int ,char*,int) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_free_urb (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;
 int zd_usb_dev (struct zd_usb*) ;

__attribute__((used)) static int zd_submit_waiting_urb(struct zd_usb *usb, bool last)
{
 int r = 0;
 struct urb *urb = usb->urb_async_waiting;

 if (!urb)
  return 0;

 usb->urb_async_waiting = ((void*)0);

 if (!last)
  urb->transfer_flags |= URB_NO_INTERRUPT;

 usb_anchor_urb(urb, &usb->submitted_cmds);
 r = usb_submit_urb(urb, GFP_KERNEL);
 if (r) {
  usb_unanchor_urb(urb);
  dev_dbg_f(zd_usb_dev(usb),
   "error in usb_submit_urb(). Error number %d\n", r);
  goto error;
 }


error:
 usb_free_urb(urb);
 return r;
}
