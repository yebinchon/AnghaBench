
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_stv {int camera_name; TYPE_3__* scratch; TYPE_2__* sbuf; int ** urb; int wq; scalar_t__ streaming; TYPE_1__* frame; int * udev; } ;
struct TYPE_6__ {struct usb_stv* data; } ;
struct TYPE_5__ {struct usb_stv* data; } ;
struct TYPE_4__ {void* grabstate; } ;


 void* FRAME_ERROR ;
 int PDEBUG (int ,char*,int ) ;
 int STV680_NUMSBUF ;
 int STV680_NUMSCRATCH ;
 int kfree (struct usb_stv*) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static inline void usb_stv680_remove_disconnected (struct usb_stv *stv680)
{
 int i;

 stv680->udev = ((void*)0);
 stv680->frame[0].grabstate = FRAME_ERROR;
 stv680->frame[1].grabstate = FRAME_ERROR;
 stv680->streaming = 0;

 wake_up_interruptible (&stv680->wq);

 for (i = 0; i < STV680_NUMSBUF; i++)
  if (stv680->urb[i]) {
   usb_kill_urb (stv680->urb[i]);
   usb_free_urb (stv680->urb[i]);
   stv680->urb[i] = ((void*)0);
   kfree(stv680->sbuf[i].data);
  }
 for (i = 0; i < STV680_NUMSCRATCH; i++)
  kfree(stv680->scratch[i].data);
 PDEBUG (0, "STV(i): %s disconnected", stv680->camera_name);


 kfree(stv680);
}
