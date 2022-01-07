
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_host_interface {TYPE_2__* endpoint; } ;
struct TYPE_6__ {int width; int height; int usb_err; int alt; int iface; int dev; } ;
struct sd {scalar_t__ bridge; int clockdiv; int sensor; TYPE_3__ gspca_dev; } ;
struct TYPE_4__ {int wMaxPacketSize; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 scalar_t__ BRIDGE_OV518 ;
 scalar_t__ BRIDGE_OV518PLUS ;
 int EIO ;
 int R51x_FIFO_PSIZE ;


 int err (char*) ;
 int i2c_w (struct sd*,int,int) ;
 int le16_to_cpu (int ) ;
 int ov518_reg_w32 (struct sd*,int,int,int) ;
 int reg_w (struct sd*,int,int) ;
 int reg_w_mask (struct sd*,int,int,int) ;
 struct usb_host_interface* usb_altnum_to_altsetting (struct usb_interface*,int ) ;
 struct usb_interface* usb_ifnum_to_if (int ,int ) ;

__attribute__((used)) static void ov518_mode_init_regs(struct sd *sd)
{
 int hsegs, vsegs, packet_size;
 struct usb_host_interface *alt;
 struct usb_interface *intf;

 intf = usb_ifnum_to_if(sd->gspca_dev.dev, sd->gspca_dev.iface);
 alt = usb_altnum_to_altsetting(intf, sd->gspca_dev.alt);
 if (!alt) {
  err("Couldn't get altsetting");
  sd->gspca_dev.usb_err = -EIO;
  return;
 }

 packet_size = le16_to_cpu(alt->endpoint[0].desc.wMaxPacketSize);
 ov518_reg_w32(sd, R51x_FIFO_PSIZE, packet_size & ~7, 2);


 reg_w(sd, 0x2b, 0);
 reg_w(sd, 0x2c, 0);
 reg_w(sd, 0x2d, 0);
 reg_w(sd, 0x2e, 0);
 reg_w(sd, 0x3b, 0);
 reg_w(sd, 0x3c, 0);
 reg_w(sd, 0x3d, 0);
 reg_w(sd, 0x3e, 0);

 if (sd->bridge == BRIDGE_OV518) {

  reg_w_mask(sd, 0x20, 0x08, 0x08);


  reg_w_mask(sd, 0x28, 0x80, 0xf0);
  reg_w_mask(sd, 0x38, 0x80, 0xf0);
 } else {
  reg_w(sd, 0x28, 0x80);
  reg_w(sd, 0x38, 0x80);
 }

 hsegs = sd->gspca_dev.width / 16;
 vsegs = sd->gspca_dev.height / 4;

 reg_w(sd, 0x29, hsegs);
 reg_w(sd, 0x2a, vsegs);

 reg_w(sd, 0x39, hsegs);
 reg_w(sd, 0x3a, vsegs);


 reg_w(sd, 0x2f, 0x80);


 sd->clockdiv = 1;



 reg_w(sd, 0x51, 0x04);
 reg_w(sd, 0x22, 0x18);
 reg_w(sd, 0x23, 0xff);

 if (sd->bridge == BRIDGE_OV518PLUS) {
  switch (sd->sensor) {
  case 128:
   if (sd->gspca_dev.width == 320) {
    reg_w(sd, 0x20, 0x00);
    reg_w(sd, 0x21, 0x19);
   } else {
    reg_w(sd, 0x20, 0x60);
    reg_w(sd, 0x21, 0x1f);
   }
   break;
  case 129:
   reg_w(sd, 0x20, 0x00);
   reg_w(sd, 0x21, 0x19);
   break;
  default:
   reg_w(sd, 0x21, 0x19);
  }
 } else
  reg_w(sd, 0x71, 0x17);



 i2c_w(sd, 0x54, 0x23);

 reg_w(sd, 0x2f, 0x80);

 if (sd->bridge == BRIDGE_OV518PLUS) {
  reg_w(sd, 0x24, 0x94);
  reg_w(sd, 0x25, 0x90);
  ov518_reg_w32(sd, 0xc4, 400, 2);
  ov518_reg_w32(sd, 0xc6, 540, 2);
  ov518_reg_w32(sd, 0xc7, 540, 2);
  ov518_reg_w32(sd, 0xc8, 108, 2);
  ov518_reg_w32(sd, 0xca, 131098, 3);
  ov518_reg_w32(sd, 0xcb, 532, 2);
  ov518_reg_w32(sd, 0xcc, 2400, 2);
  ov518_reg_w32(sd, 0xcd, 32, 2);
  ov518_reg_w32(sd, 0xce, 608, 2);
 } else {
  reg_w(sd, 0x24, 0x9f);
  reg_w(sd, 0x25, 0x90);
  ov518_reg_w32(sd, 0xc4, 400, 2);
  ov518_reg_w32(sd, 0xc6, 381, 2);
  ov518_reg_w32(sd, 0xc7, 381, 2);
  ov518_reg_w32(sd, 0xc8, 128, 2);
  ov518_reg_w32(sd, 0xca, 183331, 3);
  ov518_reg_w32(sd, 0xcb, 746, 2);
  ov518_reg_w32(sd, 0xcc, 1750, 2);
  ov518_reg_w32(sd, 0xcd, 45, 2);
  ov518_reg_w32(sd, 0xce, 851, 2);
 }

 reg_w(sd, 0x2f, 0x80);
}
