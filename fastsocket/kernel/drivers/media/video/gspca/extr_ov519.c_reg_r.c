
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int usb_err; int* usb_buf; int dev; } ;
struct sd {int bridge; TYPE_1__ gspca_dev; } ;





 int D_USBI ;
 int PDEBUG (int ,char*,int,int ,int) ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int err (char*,int ,int) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int reg_r(struct sd *sd, u16 index)
{
 int ret;
 int req;

 if (sd->gspca_dev.usb_err < 0)
  return -1;

 switch (sd->bridge) {
 case 130:
 case 129:
  req = 3;
  break;
 case 128:
  req = 0x0b;
  break;
 default:
  req = 1;
 }

 ret = usb_control_msg(sd->gspca_dev.dev,
   usb_rcvctrlpipe(sd->gspca_dev.dev, 0),
   req,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0, index, sd->gspca_dev.usb_buf, 1, 500);

 if (ret >= 0) {
  ret = sd->gspca_dev.usb_buf[0];
  PDEBUG(D_USBI, "GET %02x 0000 %04x %02x",
   req, index, ret);
 } else {
  err("reg_r %02x failed %d", index, ret);
  sd->gspca_dev.usb_err = ret;
 }

 return ret;
}
