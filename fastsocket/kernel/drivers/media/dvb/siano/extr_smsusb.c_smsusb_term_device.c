
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct smsusb_device_t {scalar_t__ coredev; } ;


 int kfree (struct smsusb_device_t*) ;
 int sms_info (char*,struct smsusb_device_t*) ;
 int smscore_unregister_device (scalar_t__) ;
 int smsusb_stop_streaming (struct smsusb_device_t*) ;
 struct smsusb_device_t* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void smsusb_term_device(struct usb_interface *intf)
{
 struct smsusb_device_t *dev = usb_get_intfdata(intf);

 if (dev) {
  smsusb_stop_streaming(dev);


  if (dev->coredev)
   smscore_unregister_device(dev->coredev);

  kfree(dev);

  sms_info("device %p destroyed", dev);
 }

 usb_set_intfdata(intf, ((void*)0));
}
