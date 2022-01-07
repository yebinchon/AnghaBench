
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct dsbr100_device {int removed; int v4l2_dev; int videodev; int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dsbr100_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int v4l2_device_disconnect (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void usb_dsbr100_disconnect(struct usb_interface *intf)
{
 struct dsbr100_device *radio = usb_get_intfdata(intf);

 usb_set_intfdata (intf, ((void*)0));

 mutex_lock(&radio->lock);
 radio->removed = 1;
 mutex_unlock(&radio->lock);

 video_unregister_device(&radio->videodev);
 v4l2_device_disconnect(&radio->v4l2_dev);
}
