
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; int dev; } ;


 int D_USBI ;
 int EIO ;
 int PDEBUG (int ,char*,int) ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_GET_STATUS ;
 int USB_TYPE_VENDOR ;
 int err (char*,int) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int sn9c2028_read1(struct gspca_dev *gspca_dev)
{
 int rc;

 rc = usb_control_msg(gspca_dev->dev,
   usb_rcvctrlpipe(gspca_dev->dev, 0),
   USB_REQ_GET_STATUS,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   1, 0, gspca_dev->usb_buf, 1, 500);
 if (rc != 1) {
  err("read1 error %d", rc);
  return (rc < 0) ? rc : -EIO;
 }
 PDEBUG(D_USBI, "read1 response %02x", gspca_dev->usb_buf[0]);
 return gspca_dev->usb_buf[0];
}
