
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {scalar_t__ outhead; scalar_t__ outtail; int wait; int iofl; int intf; } ;
struct hid_device {int dummy; } ;


 int HID_OUT_RUNNING ;
 int clear_bit (int ,int *) ;
 int dbg (char*,scalar_t__,scalar_t__) ;
 scalar_t__ hid_submit_out (struct hid_device*) ;
 struct hid_device* usb_get_intfdata (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int usbhid_restart_out_queue(struct usbhid_device *usbhid)
{
 struct hid_device *hid = usb_get_intfdata(usbhid->intf);
 int kicked;

 if (!hid)
  return 0;

 if ((kicked = (usbhid->outhead != usbhid->outtail))) {
  dbg("Kicking head %d tail %d", usbhid->outhead, usbhid->outtail);
  if (hid_submit_out(hid)) {
   clear_bit(HID_OUT_RUNNING, &usbhid->iofl);
   wake_up(&usbhid->wait);
  }
 }
 return kicked;
}
