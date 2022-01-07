
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int udev; } ;


 int EINVAL ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int deb_data (char*) ;
 int deb_info (char*,int) ;
 int debug_dump (int*,int,int (*) (char*)) ;
 int err (char*) ;
 int usb_control_msg (int ,int ,int,int,int,int,int*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

int dib0700_ctrl_rd(struct dvb_usb_device *d, u8 *tx, u8 txlen, u8 *rx, u8 rxlen)
{
 u16 index, value;
 int status;

 if (txlen < 2) {
  err("tx buffer length is smaller than 2. Makes no sense.");
  return -EINVAL;
 }
 if (txlen > 4) {
  err("tx buffer length is larger than 4. Not supported.");
  return -EINVAL;
 }

 deb_data(">>> ");
 debug_dump(tx,txlen,deb_data);

 value = ((txlen - 2) << 8) | tx[1];
 index = 0;
 if (txlen > 2)
  index |= (tx[2] << 8);
 if (txlen > 3)
  index |= tx[3];

 status = usb_control_msg(d->udev, usb_rcvctrlpipe(d->udev,0), tx[0],
   USB_TYPE_VENDOR | USB_DIR_IN, value, index, rx, rxlen,
   USB_CTRL_GET_TIMEOUT);

 if (status < 0)
  deb_info("ep 0 read error (status = %d)\n",status);

 deb_data("<<< ");
 debug_dump(rx, rxlen, deb_data);

 return status;
}
