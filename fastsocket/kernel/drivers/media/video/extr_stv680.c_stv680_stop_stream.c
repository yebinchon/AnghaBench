
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_stv {TYPE_2__* scratch; TYPE_1__* sbuf; int ** urb; scalar_t__ streaming; int udev; } ;
struct TYPE_4__ {int * data; } ;
struct TYPE_3__ {int * data; } ;


 int STV680_NUMSBUF ;
 int STV680_NUMSCRATCH ;
 int kfree (int *) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;

__attribute__((used)) static int stv680_stop_stream (struct usb_stv *stv680)
{
 int i;

 if (!stv680->streaming || !stv680->udev)
  return 1;

 stv680->streaming = 0;

 for (i = 0; i < STV680_NUMSBUF; i++)
  if (stv680->urb[i]) {
   usb_kill_urb (stv680->urb[i]);
   usb_free_urb (stv680->urb[i]);
   stv680->urb[i] = ((void*)0);
   kfree(stv680->sbuf[i].data);
  }
 for (i = 0; i < STV680_NUMSCRATCH; i++) {
  kfree(stv680->scratch[i].data);
  stv680->scratch[i].data = ((void*)0);
 }

 return 0;
}
