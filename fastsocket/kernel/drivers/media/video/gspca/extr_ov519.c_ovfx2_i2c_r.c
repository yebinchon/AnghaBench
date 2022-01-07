
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_2__ {int usb_err; int* usb_buf; int dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;


 int D_USBI ;
 int PDEBUG (int ,char*,scalar_t__,int) ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int err (char*,scalar_t__,int) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int ovfx2_i2c_r(struct sd *sd, u8 reg)
{
 int ret;

 if (sd->gspca_dev.usb_err < 0)
  return -1;

 ret = usb_control_msg(sd->gspca_dev.dev,
   usb_rcvctrlpipe(sd->gspca_dev.dev, 0),
   0x03,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0, (u16) reg, sd->gspca_dev.usb_buf, 1, 500);

 if (ret >= 0) {
  ret = sd->gspca_dev.usb_buf[0];
  PDEBUG(D_USBI, "ovfx2_i2c_r %02x %02x", reg, ret);
 } else {
  err("ovfx2_i2c_r %02x failed %d", reg, ret);
  sd->gspca_dev.usb_err = ret;
 }

 return ret;
}
