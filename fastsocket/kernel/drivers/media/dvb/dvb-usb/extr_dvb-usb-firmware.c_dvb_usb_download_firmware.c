
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
struct firmware {int dummy; } ;
struct dvb_usb_device_properties {int usb_ctrl; int (* download_firmware ) (struct usb_device*,struct firmware const*) ;int firmware; } ;






 int EINVAL ;
 int err (char*,...) ;
 int info (char*,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;
 int stub1 (struct usb_device*,struct firmware const*) ;
 int usb_cypress_load_firmware (struct usb_device*,struct firmware const*,int) ;

int dvb_usb_download_firmware(struct usb_device *udev, struct dvb_usb_device_properties *props)
{
 int ret;
 const struct firmware *fw = ((void*)0);

 if ((ret = request_firmware(&fw, props->firmware, &udev->dev)) != 0) {
  err("did not find the firmware file. (%s) "
   "Please see linux/Documentation/dvb/ for more details on firmware-problems. (%d)",
   props->firmware,ret);
  return ret;
 }

 info("downloading firmware from file '%s'",props->firmware);

 switch (props->usb_ctrl) {
  case 131:
  case 130:
  case 129:
   ret = usb_cypress_load_firmware(udev, fw, props->usb_ctrl);
   break;
  case 128:
   if (props->download_firmware)
    ret = props->download_firmware(udev,fw);
   else {
    err("BUG: driver didn't specified a download_firmware-callback, although it claims to have a DEVICE_SPECIFIC one.");
    ret = -EINVAL;
   }
   break;
  default:
   ret = -EINVAL;
   break;
 }

 release_firmware(fw);
 return ret;
}
