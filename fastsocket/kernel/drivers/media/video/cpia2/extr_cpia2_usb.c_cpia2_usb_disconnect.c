
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct camera_data {scalar_t__ open_count; int wq_stream; TYPE_1__* curbuff; scalar_t__ buffers; scalar_t__ present; } ;
struct TYPE_2__ {scalar_t__ length; int status; } ;


 int DBG (char*) ;
 int FRAME_READY ;
 int LOG (char*) ;
 int cpia2_driver ;
 int cpia2_unregister_camera (struct camera_data*) ;
 int cpia2_usb_stream_stop (struct camera_data*) ;
 int kfree (struct camera_data*) ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 struct camera_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cpia2_usb_disconnect(struct usb_interface *intf)
{
 struct camera_data *cam = usb_get_intfdata(intf);
 usb_set_intfdata(intf, ((void*)0));
 cam->present = 0;

 DBG("Stopping stream\n");
 cpia2_usb_stream_stop(cam);

 DBG("Unregistering camera\n");
 cpia2_unregister_camera(cam);

 if(cam->buffers) {
  DBG("Wakeup waiting processes\n");
  cam->curbuff->status = FRAME_READY;
  cam->curbuff->length = 0;
  if (waitqueue_active(&cam->wq_stream))
   wake_up_interruptible(&cam->wq_stream);
 }

 DBG("Releasing interface\n");
 usb_driver_release_interface(&cpia2_driver, intf);

 if (cam->open_count == 0) {
  DBG("Freeing camera structure\n");
  kfree(cam);
 }

 LOG("CPiA2 camera disconnected.\n");
}
