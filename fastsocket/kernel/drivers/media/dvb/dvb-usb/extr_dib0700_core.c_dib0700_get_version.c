
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dvb_usb_device {int udev; } ;
typedef int b ;


 int REQUEST_GET_VERSION ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

int dib0700_get_version(struct dvb_usb_device *d, u32 *hwversion,
   u32 *romversion, u32 *ramversion, u32 *fwtype)
{
 u8 b[16];
 int ret = usb_control_msg(d->udev, usb_rcvctrlpipe(d->udev, 0),
      REQUEST_GET_VERSION,
      USB_TYPE_VENDOR | USB_DIR_IN, 0, 0,
      b, sizeof(b), USB_CTRL_GET_TIMEOUT);
 if (hwversion != ((void*)0))
  *hwversion = (b[0] << 24) | (b[1] << 16) | (b[2] << 8) | b[3];
 if (romversion != ((void*)0))
  *romversion = (b[4] << 24) | (b[5] << 16) | (b[6] << 8) | b[7];
 if (ramversion != ((void*)0))
  *ramversion = (b[8] << 24) | (b[9] << 16) | (b[10] << 8) | b[11];
 if (fwtype != ((void*)0))
  *fwtype = (b[12] << 24) | (b[13] << 16) | (b[14] << 8) | b[15];
 return ret;
}
