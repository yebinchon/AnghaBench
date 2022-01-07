
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ov511 {int nr; int curframe; int cbuf_lock; struct usb_ov511* cbuf; int user; int * dev; int lock; scalar_t__ streaming; int wq; TYPE_1__* frame; scalar_t__ vdev; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int wq; int grabstate; } ;


 int FRAME_ERROR ;
 int OV511_NUMFRAMES ;
 int PDEBUG (int,char*) ;
 int kfree (struct usb_ov511*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov511_devused ;
 int ov51x_dealloc (struct usb_ov511*) ;
 int ov51x_unlink_isoc (struct usb_ov511*) ;
 struct usb_ov511* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int video_unregister_device (scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
ov51x_disconnect(struct usb_interface *intf)
{
 struct usb_ov511 *ov = usb_get_intfdata(intf);
 int n;

 PDEBUG(3, "");

 mutex_lock(&ov->lock);
 usb_set_intfdata (intf, ((void*)0));

 if (!ov) {
  mutex_unlock(&ov->lock);
  return;
 }


 ov511_devused &= ~(1 << ov->nr);

 if (ov->vdev)
  video_unregister_device(ov->vdev);

 for (n = 0; n < OV511_NUMFRAMES; n++)
  ov->frame[n].grabstate = FRAME_ERROR;

 ov->curframe = -1;


 for (n = 0; n < OV511_NUMFRAMES; n++)
  wake_up_interruptible(&ov->frame[n].wq);

 wake_up_interruptible(&ov->wq);

 ov->streaming = 0;
 ov51x_unlink_isoc(ov);
 mutex_unlock(&ov->lock);

 ov->dev = ((void*)0);


 if (ov && !ov->user) {
  mutex_lock(&ov->cbuf_lock);
  kfree(ov->cbuf);
  ov->cbuf = ((void*)0);
  mutex_unlock(&ov->cbuf_lock);

  ov51x_dealloc(ov);
  kfree(ov);
  ov = ((void*)0);
 }

 PDEBUG(3, "Disconnect complete");
}
