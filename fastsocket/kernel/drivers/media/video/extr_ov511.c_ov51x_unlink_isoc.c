
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ov511 {TYPE_1__* sbuf; } ;
struct TYPE_2__ {int * urb; } ;


 int OV511_NUMSBUF ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;

__attribute__((used)) static void
ov51x_unlink_isoc(struct usb_ov511 *ov)
{
 int n;


 for (n = OV511_NUMSBUF - 1; n >= 0; n--) {
  if (ov->sbuf[n].urb) {
   usb_kill_urb(ov->sbuf[n].urb);
   usb_free_urb(ov->sbuf[n].urb);
   ov->sbuf[n].urb = ((void*)0);
  }
 }
}
