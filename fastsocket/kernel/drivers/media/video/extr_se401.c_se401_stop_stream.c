
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_se401 {TYPE_2__* scratch; TYPE_1__* sbuf; int ** urb; scalar_t__ streaming; int dev; } ;
struct TYPE_4__ {int * data; } ;
struct TYPE_3__ {int * data; } ;


 int SE401_NUMSBUF ;
 int SE401_NUMSCRATCH ;
 int SE401_REQ_CAMERA_POWER ;
 int SE401_REQ_LED_CONTROL ;
 int SE401_REQ_STOP_CONTINUOUS_CAPTURE ;
 int kfree (int *) ;
 int se401_sndctrl (int,struct usb_se401*,int ,int ,int *,int ) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;

__attribute__((used)) static int se401_stop_stream(struct usb_se401 *se401)
{
 int i;

 if (!se401->streaming || !se401->dev)
  return 1;

 se401->streaming = 0;

 se401_sndctrl(1, se401, SE401_REQ_STOP_CONTINUOUS_CAPTURE, 0, ((void*)0), 0);

 se401_sndctrl(1, se401, SE401_REQ_LED_CONTROL, 0, ((void*)0), 0);
 se401_sndctrl(1, se401, SE401_REQ_CAMERA_POWER, 0, ((void*)0), 0);

 for (i = 0; i < SE401_NUMSBUF; i++)
  if (se401->urb[i]) {
   usb_kill_urb(se401->urb[i]);
   usb_free_urb(se401->urb[i]);
   se401->urb[i] = ((void*)0);
   kfree(se401->sbuf[i].data);
  }
 for (i = 0; i < SE401_NUMSCRATCH; i++) {
  kfree(se401->scratch[i].data);
  se401->scratch[i].data = ((void*)0);
 }

 return 0;
}
