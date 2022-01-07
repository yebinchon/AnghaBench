
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_field {int report; } ;
struct hid_device {int dummy; } ;


 int HID_UP_LED ;
 int USB_DIR_OUT ;
 int hid_find_field_early (struct hid_device*,int ,int,struct hid_field**) ;
 int hid_set_field (struct hid_field*,int,int ) ;
 int usbhid_submit_report (struct hid_device*,int ,int ) ;

void usbhid_set_leds(struct hid_device *hid)
{
 struct hid_field *field;
 int offset;

 if ((offset = hid_find_field_early(hid, HID_UP_LED, 0x01, &field)) != -1) {
  hid_set_field(field, offset, 0);
  usbhid_submit_report(hid, field->report, USB_DIR_OUT);
 }
}
