
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int lock; int ledcount; } ;
struct input_dev {int dev; } ;
struct hid_field {int report; } ;
struct hid_device {struct usbhid_device* driver_data; } ;


 unsigned int EV_FF ;
 unsigned int EV_LED ;
 int USB_DIR_OUT ;
 int dev_warn (int *,char*) ;
 int hid_set_field (struct hid_field*,int,int) ;
 int hidinput_find_field (struct hid_device*,unsigned int,unsigned int,struct hid_field**) ;
 int input_ff_event (struct input_dev*,unsigned int,unsigned int,int) ;
 struct hid_device* input_get_drvdata (struct input_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usbhid_submit_report (struct hid_device*,int ,int ) ;

__attribute__((used)) static int usb_hidinput_input_event(struct input_dev *dev, unsigned int type, unsigned int code, int value)
{
 struct hid_device *hid = input_get_drvdata(dev);
 struct usbhid_device *usbhid = hid->driver_data;
 struct hid_field *field;
 unsigned long flags;
 int offset;

 if (type == EV_FF)
  return input_ff_event(dev, type, code, value);

 if (type != EV_LED)
  return -1;

 if ((offset = hidinput_find_field(hid, type, code, &field)) == -1) {
  dev_warn(&dev->dev, "event field not found\n");
  return -1;
 }

 hid_set_field(field, offset, value);
 if (value) {
  spin_lock_irqsave(&usbhid->lock, flags);
  usbhid->ledcount++;
  spin_unlock_irqrestore(&usbhid->lock, flags);
 } else {
  spin_lock_irqsave(&usbhid->lock, flags);
  usbhid->ledcount--;
  spin_unlock_irqrestore(&usbhid->lock, flags);
 }
 usbhid_submit_report(hid, field->report, USB_DIR_OUT);

 return 0;
}
