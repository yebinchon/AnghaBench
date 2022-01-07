
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int udev; } ;


 int EIO ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int deb_xfer (char*,int ,int ,int ) ;
 int debug_dump (int *,int,int (*) (char*,int ,int ,int )) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int warn (char*,int) ;

int vp702x_usb_in_op(struct dvb_usb_device *d, u8 req, u16 value, u16 index, u8 *b, int blen)
{
 int ret = -1;

  ret = usb_control_msg(d->udev,
   usb_rcvctrlpipe(d->udev,0),
   req,
   USB_TYPE_VENDOR | USB_DIR_IN,
   value,index,b,blen,
   2000);

 if (ret < 0) {
  warn("usb in operation failed. (%d)", ret);
  ret = -EIO;
 } else
  ret = 0;


 deb_xfer("in: req. %02x, val: %04x, ind: %04x, buffer: ",req,value,index);
 debug_dump(b,blen,deb_xfer);

 return ret;
}
