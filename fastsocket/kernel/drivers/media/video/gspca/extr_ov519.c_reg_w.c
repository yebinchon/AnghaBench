
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int usb_err; int * usb_buf; int dev; } ;
struct sd {int bridge; TYPE_1__ gspca_dev; } ;






 int D_USBO ;
 int PDEBUG (int ,char*,int,int ,int ) ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int err (char*,int ,int) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_w(struct sd *sd, u16 index, u16 value)
{
 int ret, req = 0;

 if (sd->gspca_dev.usb_err < 0)
  return;

 switch (sd->bridge) {
 case 131:
 case 130:
  req = 2;
  break;
 case 129:
  req = 0x0a;

 case 128:
  PDEBUG(D_USBO, "SET %02x %04x %04x",
    req, value, index);
  ret = usb_control_msg(sd->gspca_dev.dev,
   usb_sndctrlpipe(sd->gspca_dev.dev, 0),
   req,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value, index, ((void*)0), 0, 500);
  goto leave;
 default:
  req = 1;
 }

 PDEBUG(D_USBO, "SET %02x 0000 %04x %02x",
   req, index, value);
 sd->gspca_dev.usb_buf[0] = value;
 ret = usb_control_msg(sd->gspca_dev.dev,
   usb_sndctrlpipe(sd->gspca_dev.dev, 0),
   req,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0, index,
   sd->gspca_dev.usb_buf, 1, 500);
leave:
 if (ret < 0) {
  err("reg_w %02x failed %d", index, ret);
  sd->gspca_dev.usb_err = ret;
  return;
 }
}
