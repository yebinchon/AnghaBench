
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ status; struct iforce* context; } ;
struct iforce {int wait; } ;


 int dbg (char*,scalar_t__) ;
 int iforce_usb_xmit (struct iforce*) ;
 int wake_up (int *) ;

__attribute__((used)) static void iforce_usb_out(struct urb *urb)
{
 struct iforce *iforce = urb->context;

 if (urb->status) {
  dbg("urb->status %d, exiting", urb->status);
  return;
 }

 iforce_usb_xmit(iforce);

 wake_up(&iforce->wait);
}
