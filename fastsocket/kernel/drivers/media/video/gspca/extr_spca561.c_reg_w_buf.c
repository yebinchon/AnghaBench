
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int usb_buf; int dev; } ;
typedef int __u16 ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int ,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_w_buf(struct gspca_dev *gspca_dev,
        __u16 index, __u16 len)
{
 usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   0,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0,
   index, gspca_dev->usb_buf, len, 500);
}
