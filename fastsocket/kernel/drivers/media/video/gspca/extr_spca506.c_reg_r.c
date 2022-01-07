
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int usb_buf; int dev; } ;
typedef int __u16 ;


 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int ,int ,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_r(struct gspca_dev *gspca_dev,
    __u16 req,
    __u16 index,
    __u16 length)
{
 usb_control_msg(gspca_dev->dev,
   usb_rcvctrlpipe(gspca_dev->dev, 0),
   req,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0,
   index, gspca_dev->usb_buf, length,
   500);
}
