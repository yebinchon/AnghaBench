
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbhid_device {int lock; int iofl; } ;
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct usb_device {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;
struct TYPE_3__ {int bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int HID_RESET_PENDING ;
 int clear_bit (int ,int *) ;
 int hid_io_error (struct hid_device*) ;
 int hid_set_idle (struct usb_device*,int ,int ,int ) ;
 int hid_start_in (struct hid_device*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct hid_device* usb_get_intfdata (struct usb_interface*) ;
 int usbhid_restart_queues (struct usbhid_device*) ;

__attribute__((used)) static int hid_post_reset(struct usb_interface *intf)
{
 struct usb_device *dev = interface_to_usbdev (intf);
 struct hid_device *hid = usb_get_intfdata(intf);
 struct usbhid_device *usbhid = hid->driver_data;
 int status;

 spin_lock_irq(&usbhid->lock);
 clear_bit(HID_RESET_PENDING, &usbhid->iofl);
 spin_unlock_irq(&usbhid->lock);
 hid_set_idle(dev, intf->cur_altsetting->desc.bInterfaceNumber, 0, 0);
 status = hid_start_in(hid);
 if (status < 0)
  hid_io_error(hid);
 usbhid_restart_queues(usbhid);

 return 0;
}
