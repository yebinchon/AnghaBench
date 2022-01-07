
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {scalar_t__ type; int device_type; } ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {struct usb_host_interface* endpoint; } ;
struct hid_descriptor {int dummy; } ;


 int BTN_TOOL_PEN ;
 int HID_DEVICET_HID ;
 int HID_DEVICET_REPORT ;
 scalar_t__ TABLETPC ;
 scalar_t__ TABLETPC2FG ;
 int printk (char*) ;
 scalar_t__ usb_get_extra_descriptor (struct usb_host_interface*,int ,struct hid_descriptor**) ;
 int wacom_parse_hid (struct usb_interface*,struct hid_descriptor*,struct wacom_features*) ;

__attribute__((used)) static int wacom_retrieve_hid_descriptor(struct usb_interface *intf,
  struct wacom_features *features)
{
 int error = 0;
 struct usb_host_interface *interface = intf->cur_altsetting;
 struct hid_descriptor *hid_desc;


 features->device_type = BTN_TOOL_PEN;


 if ((features->type != TABLETPC) && (features->type != TABLETPC2FG))
  goto out;

 if (usb_get_extra_descriptor(interface, HID_DEVICET_HID, &hid_desc)) {
  if (usb_get_extra_descriptor(&interface->endpoint[0],
    HID_DEVICET_REPORT, &hid_desc)) {
   printk("wacom: can not retrieve extra class descriptor\n");
   error = 1;
   goto out;
  }
 }
 error = wacom_parse_hid(intf, hid_desc, features);
 if (error)
  goto out;

 out:
 return error;
}
