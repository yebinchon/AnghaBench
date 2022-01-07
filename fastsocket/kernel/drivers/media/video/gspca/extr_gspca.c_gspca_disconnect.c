
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct input_dev {int dummy; } ;
struct gspca_dev {int vdev; int usb_lock; int * dev; struct input_dev* input_dev; int wq; scalar_t__ present; } ;


 int D_PROBE ;
 int PDEBUG (int ,char*,int ) ;
 int destroy_urbs (struct gspca_dev*) ;
 int gspca_input_destroy_urb (struct gspca_dev*) ;
 int input_unregister_device (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct gspca_dev* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int video_device_node_name (int *) ;
 int video_unregister_device (int *) ;
 int wake_up_interruptible (int *) ;

void gspca_disconnect(struct usb_interface *intf)
{
 struct gspca_dev *gspca_dev = usb_get_intfdata(intf);




 PDEBUG(D_PROBE, "%s disconnect",
  video_device_node_name(&gspca_dev->vdev));
 mutex_lock(&gspca_dev->usb_lock);

 gspca_dev->present = 0;
 wake_up_interruptible(&gspca_dev->wq);

 destroy_urbs(gspca_dev);
 gspca_dev->dev = ((void*)0);
 mutex_unlock(&gspca_dev->usb_lock);

 usb_set_intfdata(intf, ((void*)0));



 video_unregister_device(&gspca_dev->vdev);


}
