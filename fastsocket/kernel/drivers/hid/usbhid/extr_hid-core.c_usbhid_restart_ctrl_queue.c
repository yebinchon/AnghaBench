
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {scalar_t__ ctrlhead; scalar_t__ ctrltail; int wait; int iofl; int intf; } ;
struct hid_device {int dummy; } ;


 int HID_CTRL_RUNNING ;
 int WARN_ON (int ) ;
 int clear_bit (int ,int *) ;
 int dbg (char*,scalar_t__,scalar_t__) ;
 scalar_t__ hid_submit_ctrl (struct hid_device*) ;
 struct hid_device* usb_get_intfdata (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int usbhid_restart_ctrl_queue(struct usbhid_device *usbhid)
{
 struct hid_device *hid = usb_get_intfdata(usbhid->intf);
 int kicked;

 WARN_ON(hid == ((void*)0));
 if (!hid)
  return 0;

 if ((kicked = (usbhid->ctrlhead != usbhid->ctrltail))) {
  dbg("Kicking head %d tail %d", usbhid->ctrlhead, usbhid->ctrltail);
  if (hid_submit_ctrl(hid)) {
   clear_bit(HID_CTRL_RUNNING, &usbhid->iofl);
   wake_up(&usbhid->wait);
  }
 }
 return kicked;
}
