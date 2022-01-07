
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int usb_buf; int dev; } ;


 int D_USBI ;
 int EIO ;
 int PDEBUG (int ,char*,int ,int ,int ,int ) ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_GET_STATUS ;
 int USB_TYPE_VENDOR ;
 int err (char*,int) ;
 int memcpy (int *,int ,int) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,int ,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int sn9c2028_read4(struct gspca_dev *gspca_dev, u8 *reading)
{
 int rc;
 rc = usb_control_msg(gspca_dev->dev,
   usb_rcvctrlpipe(gspca_dev->dev, 0),
   USB_REQ_GET_STATUS,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   4, 0, gspca_dev->usb_buf, 4, 500);
 if (rc != 4) {
  err("read4 error %d", rc);
  return (rc < 0) ? rc : -EIO;
 }
 memcpy(reading, gspca_dev->usb_buf, 4);
 PDEBUG(D_USBI, "read4 response %02x%02x%02x%02x", reading[0],
        reading[1], reading[2], reading[3]);
 return rc;
}
