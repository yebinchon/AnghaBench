
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_device {int dummy; } ;
struct cmd_firmware_vers_s {int dummy; } ;


 int ENOMEM ;
 int GET_FW_ID ;
 int GFP_KERNEL ;
 int REQ_GET_CMD ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int firmware_download (struct usb_device*) ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,void*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static bool check_firmware(struct usb_device *udev, int *down_firmware)
{
 void *buf;
 int ret;
 struct cmd_firmware_vers_s *cmd_firm;

 buf = kzalloc(sizeof(*cmd_firm) + sizeof(u32), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 ret = usb_control_msg(udev,
    usb_rcvctrlpipe(udev, 0),
    REQ_GET_CMD | GET_FW_ID,
    USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    0,
    0,
    buf,
    sizeof(*cmd_firm) + sizeof(u32),
    USB_CTRL_GET_TIMEOUT);
 kfree(buf);

 if (ret < 0) {
  *down_firmware = 1;
  return firmware_download(udev);
 }
 return ret;
}
