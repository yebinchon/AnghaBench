
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int vendor; scalar_t__ type; int product; } ;


 scalar_t__ HID_TYPE_USBMOUSE ;
 int USB_DEVICE_ID_CODEMERCS_IOW_FIRST ;
 int USB_DEVICE_ID_CODEMERCS_IOW_LAST ;
 int USB_DEVICE_ID_LOGITECH_HARMONY_FIRST ;
 int USB_DEVICE_ID_LOGITECH_HARMONY_LAST ;
 int USB_DEVICE_ID_SOUNDGRAPH_IMON_FIRST ;
 int USB_DEVICE_ID_SOUNDGRAPH_IMON_LAST ;



 int hid_ignore_list ;
 scalar_t__ hid_match_id (struct hid_device*,int ) ;
 int hid_mouse_ignore_list ;

__attribute__((used)) static bool hid_ignore(struct hid_device *hdev)
{
 switch (hdev->vendor) {
 case 130:

  if (hdev->product >= USB_DEVICE_ID_CODEMERCS_IOW_FIRST &&
    hdev->product <= USB_DEVICE_ID_CODEMERCS_IOW_LAST)
   return 1;
  break;
 case 129:
  if (hdev->product >= USB_DEVICE_ID_LOGITECH_HARMONY_FIRST &&
    hdev->product <= USB_DEVICE_ID_LOGITECH_HARMONY_LAST)
   return 1;
  break;
 case 128:
  if (hdev->product >= USB_DEVICE_ID_SOUNDGRAPH_IMON_FIRST &&
      hdev->product <= USB_DEVICE_ID_SOUNDGRAPH_IMON_LAST)
   return 1;
  break;
 }

 if (hdev->type == HID_TYPE_USBMOUSE &&
   hid_match_id(hdev, hid_mouse_ignore_list))
  return 1;

 return !!hid_match_id(hdev, hid_ignore_list);
}
