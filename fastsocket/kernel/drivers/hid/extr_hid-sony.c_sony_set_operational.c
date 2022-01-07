
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct usb_device {int dummy; } ;
struct TYPE_6__ {int parent; } ;
struct hid_device {TYPE_3__ dev; } ;
typedef int __u16 ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_REQ_GET_REPORT ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int dev_err (TYPE_3__*,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 struct usb_interface* to_usb_interface (int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int ,char*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int sony_set_operational(struct hid_device *hdev)
{
 struct usb_interface *intf = to_usb_interface(hdev->dev.parent);
 struct usb_device *dev = interface_to_usbdev(intf);
 __u16 ifnum = intf->cur_altsetting->desc.bInterfaceNumber;
 int ret;
 char *buf = kmalloc(18, GFP_KERNEL);

 if (!buf)
  return -ENOMEM;

 ret = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
     HID_REQ_GET_REPORT,
     USB_DIR_IN | USB_TYPE_CLASS |
     USB_RECIP_INTERFACE,
     (3 << 8) | 0xf2, ifnum, buf, 17,
     USB_CTRL_GET_TIMEOUT);
 if (ret < 0)
  dev_err(&hdev->dev, "can't set operational mode\n");

 kfree(buf);

 return ret;
}
