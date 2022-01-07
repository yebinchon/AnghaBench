
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_cpia {int ** buffers; int * workbuff; TYPE_1__* curbuff; int wq_stream; scalar_t__ open; scalar_t__ present; } ;
struct cam_data {int * lowlevel_data; int cam_data_list; } ;
struct TYPE_2__ {int status; } ;


 int FRAME_ERROR ;
 int cam_list_lock_usb ;
 int cpia_unregister_camera (struct cam_data*) ;
 int cpia_usb_close (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usb_cpia*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct cam_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int vfree (int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cpia_disconnect(struct usb_interface *intf)
{
 struct cam_data *cam = usb_get_intfdata(intf);
 struct usb_cpia *ucpia;
 struct usb_device *udev;

 usb_set_intfdata(intf, ((void*)0));
 if (!cam)
  return;

 ucpia = (struct usb_cpia *) cam->lowlevel_data;
 spin_lock( &cam_list_lock_usb );
 list_del(&cam->cam_data_list);
 spin_unlock( &cam_list_lock_usb );

 ucpia->present = 0;

 cpia_unregister_camera(cam);
 if(ucpia->open)
  cpia_usb_close(cam->lowlevel_data);

 ucpia->curbuff->status = FRAME_ERROR;

 if (waitqueue_active(&ucpia->wq_stream))
  wake_up_interruptible(&ucpia->wq_stream);

 udev = interface_to_usbdev(intf);

 ucpia->curbuff = ucpia->workbuff = ((void*)0);

 vfree(ucpia->buffers[2]);
 ucpia->buffers[2] = ((void*)0);

 vfree(ucpia->buffers[1]);
 ucpia->buffers[1] = ((void*)0);

 vfree(ucpia->buffers[0]);
 ucpia->buffers[0] = ((void*)0);

 cam->lowlevel_data = ((void*)0);
 kfree(ucpia);
}
