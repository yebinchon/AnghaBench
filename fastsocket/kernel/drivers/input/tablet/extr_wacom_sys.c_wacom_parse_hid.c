
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wacom_features {unsigned char unit; unsigned char unitExpo; int pressure_max; void* y_max; void* device_type; void* pktlen; int type; void* y_phy; void* x_max; void* x_phy; } ;
struct usb_interface {TYPE_2__* altsetting; } ;
struct usb_device {int dummy; } ;
struct hid_descriptor {int wDescriptorLength; } ;
struct TYPE_3__ {int bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 void* BTN_TOOL_FINGER ;
 void* BTN_TOOL_PEN ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int HID_DEVICET_REPORT ;
 int TABLETPC2FG ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_GET_DESCRIPTOR ;
 void* WACOM_PKGLEN_PENABLED ;
 void* WACOM_PKGLEN_TPC2FG ;
 int WCM_DESKTOP ;
 int WCM_DIGITIZER ;
 int WCM_UNDEFINED ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int ,unsigned char*,int,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 void* wacom_le16_to_cpu (unsigned char*) ;

__attribute__((used)) static int wacom_parse_hid(struct usb_interface *intf, struct hid_descriptor *hid_desc,
      struct wacom_features *features)
{
 struct usb_device *dev = interface_to_usbdev(intf);
 char limit = 0;

  int result = 0;
 int i = 0, usage = WCM_UNDEFINED, finger = 0, pen = 0;
 unsigned char *report;

 report = kzalloc(hid_desc->wDescriptorLength, GFP_KERNEL);
 if (!report)
  return -ENOMEM;


 do {
  result = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
   USB_REQ_GET_DESCRIPTOR,
   USB_RECIP_INTERFACE | USB_DIR_IN,
   HID_DEVICET_REPORT << 8,
   intf->altsetting[0].desc.bInterfaceNumber,
   report,
   hid_desc->wDescriptorLength,
   5000);
 } while (result < 0 && limit++ < 5);


 if (result < 0)
  goto out;

 for (i = 0; i < hid_desc->wDescriptorLength; i++) {

  switch (report[i]) {
  case 133:
   switch (report[i + 1]) {
   case 131:
    usage = WCM_DIGITIZER;
    i++;
    break;

   case 132:
    usage = WCM_DESKTOP;
    i++;
    break;
   }
   break;

  case 135:
   switch (report[i + 1]) {
   case 129:
    if (usage == WCM_DESKTOP) {
     if (finger) {
      features->device_type = BTN_TOOL_FINGER;
      if (features->type == TABLETPC2FG) {

       features->pktlen = WACOM_PKGLEN_TPC2FG;
      }
      features->x_max =
       wacom_le16_to_cpu(&report[i + 3]);
      features->x_phy =
       wacom_le16_to_cpu(&report[i + 6]);
      features->unit = report[i + 9];
      features->unitExpo = report[i + 11];
      i += 12;
     } else if (pen) {

      if (features->type == TABLETPC2FG)
       features->pktlen = WACOM_PKGLEN_PENABLED;
      features->device_type = BTN_TOOL_PEN;
      features->x_max =
       wacom_le16_to_cpu(&report[i + 3]);
      i += 4;
     }
    } else if (usage == WCM_DIGITIZER) {




     features->pressure_max = 255;
     i += 4;
    }
    break;

   case 128:
    if (usage == WCM_DESKTOP) {
     if (finger) {
      features->device_type = BTN_TOOL_FINGER;
      if (features->type == TABLETPC2FG) {

       features->pktlen = WACOM_PKGLEN_TPC2FG;
       features->y_max =
        wacom_le16_to_cpu(&report[i + 3]);
       features->y_phy =
        wacom_le16_to_cpu(&report[i + 6]);
       i += 7;
      } else {
       features->y_max =
        features->x_max;
       features->y_phy =
        wacom_le16_to_cpu(&report[i + 3]);
       i += 4;
      }
     } else if (pen) {

      if (features->type == TABLETPC2FG)
       features->pktlen = WACOM_PKGLEN_PENABLED;
      features->device_type = BTN_TOOL_PEN;
      features->y_max =
       wacom_le16_to_cpu(&report[i + 3]);
      i += 4;
     }
    }
    break;

   case 134:
    finger = 1;
    i++;
    break;

   case 130:
    pen = 1;
    i++;
    break;
   }
   break;

  case 136:

   finger = usage = 0;
   break;
  }
 }

 out:
 result = 0;
 kfree(report);
 return result;
}
