
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_2__ {int usb_err; int dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;


 int D_USBO ;
 int PDEBUG (int ,char*,scalar_t__,scalar_t__) ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int err (char*,scalar_t__,int) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void ovfx2_i2c_w(struct sd *sd, u8 reg, u8 value)
{
 int ret;

 if (sd->gspca_dev.usb_err < 0)
  return;

 ret = usb_control_msg(sd->gspca_dev.dev,
   usb_sndctrlpipe(sd->gspca_dev.dev, 0),
   0x02,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   (u16) value, (u16) reg, ((void*)0), 0, 500);

 if (ret < 0) {
  err("ovfx2_i2c_w %02x failed %d", reg, ret);
  sd->gspca_dev.usb_err = ret;
 }

 PDEBUG(D_USBO, "ovfx2_i2c_w %02x %02x", reg, value);
}
