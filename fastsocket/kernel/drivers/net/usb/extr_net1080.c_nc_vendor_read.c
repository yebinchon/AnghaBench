
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int udev; } ;


 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int le16_to_cpus (int *) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int
nc_vendor_read(struct usbnet *dev, u8 req, u8 regnum, u16 *retval_ptr)
{
 int status = usb_control_msg(dev->udev,
  usb_rcvctrlpipe(dev->udev, 0),
  req,
  USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
  0, regnum,
  retval_ptr, sizeof *retval_ptr,
  USB_CTRL_GET_TIMEOUT);
 if (status > 0)
  status = 0;
 if (!status)
  le16_to_cpus(retval_ptr);
 return status;
}
