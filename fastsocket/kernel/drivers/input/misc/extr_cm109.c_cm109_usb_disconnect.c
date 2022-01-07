
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct cm109_dev {int idev; } ;


 int cm109_usb_cleanup (struct cm109_dev*) ;
 int input_unregister_device (int ) ;
 struct cm109_dev* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void cm109_usb_disconnect(struct usb_interface *interface)
{
 struct cm109_dev *dev = usb_get_intfdata(interface);

 usb_set_intfdata(interface, ((void*)0));
 input_unregister_device(dev->idev);
 cm109_usb_cleanup(dev);
}
