
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_stv {int removed; int user; int * vdev; } ;
struct usb_interface {int dummy; } ;


 int stv680_remove_sysfs_files (int *) ;
 struct usb_stv* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usb_stv680_remove_disconnected (struct usb_stv*) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void stv680_disconnect (struct usb_interface *intf)
{
 struct usb_stv *stv680 = usb_get_intfdata (intf);

 usb_set_intfdata (intf, ((void*)0));

 if (stv680) {

  if (stv680->vdev) {
   stv680_remove_sysfs_files(stv680->vdev);
   video_unregister_device(stv680->vdev);
   stv680->vdev = ((void*)0);
  }
  if (!stv680->user) {
   usb_stv680_remove_disconnected (stv680);
  } else {
   stv680->removed = 1;
  }
 }
}
