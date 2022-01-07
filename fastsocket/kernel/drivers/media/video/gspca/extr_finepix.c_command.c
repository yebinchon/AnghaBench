
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int member_7; int member_8; int member_11; int member_10; int member_9; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; } ;
typedef TYPE_1__ u8 ;
struct gspca_dev {int usb_buf; int dev; } ;


 int FPIX_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_GET_STATUS ;
 int USB_TYPE_CLASS ;
 int memcpy (int ,TYPE_1__*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int ,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int command(struct gspca_dev *gspca_dev,
  int order)
{
 static u8 order_values[2][12] = {
  {0xc6, 0, 0, 0, 0, 0, 0, 0, 0x20, 0, 0, 0},
  {0xd3, 0, 0, 0, 0, 0, 0, 0x01, 0, 0, 0, 0},
 };

 memcpy(gspca_dev->usb_buf, order_values[order], 12);
 return usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   USB_REQ_GET_STATUS,
   USB_DIR_OUT | USB_TYPE_CLASS |
   USB_RECIP_INTERFACE, 0, 0, gspca_dev->usb_buf,
   12, FPIX_TIMEOUT);
}
