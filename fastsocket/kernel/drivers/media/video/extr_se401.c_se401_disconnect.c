
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_se401 {int removed; int wq; scalar_t__ streaming; TYPE_1__* frame; int user; int vdev; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {void* grabstate; } ;


 void* FRAME_ERROR ;
 struct usb_se401* usb_get_intfdata (struct usb_interface*) ;
 int usb_se401_remove_disconnected (struct usb_se401*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int video_unregister_device (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void se401_disconnect(struct usb_interface *intf)
{
 struct usb_se401 *se401 = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));
 if (se401) {
  video_unregister_device(&se401->vdev);
  if (!se401->user)
   usb_se401_remove_disconnected(se401);
  else {
   se401->frame[0].grabstate = FRAME_ERROR;
   se401->frame[0].grabstate = FRAME_ERROR;

   se401->streaming = 0;

   wake_up_interruptible(&se401->wq);
   se401->removed = 1;
  }
 }
}
