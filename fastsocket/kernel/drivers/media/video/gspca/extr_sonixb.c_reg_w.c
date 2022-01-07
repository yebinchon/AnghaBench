
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int usb_buf; int dev; } ;
typedef int __u8 ;
typedef int __u16 ;


 int D_ERR ;
 int D_PACK ;
 int PDEBUG (int,char*) ;
 int USB_BUF_SZ ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int memcpy (int ,int const*,int) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int ,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev,
    __u16 value,
    const __u8 *buffer,
    int len)
{






 memcpy(gspca_dev->usb_buf, buffer, len);
 usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   0x08,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   value,
   0,
   gspca_dev->usb_buf, len,
   500);
}
