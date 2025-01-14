
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int subw; int subh; int minwidth; int minheight; scalar_t__ bridge; } ;


 scalar_t__ BRG_OV518 ;
 scalar_t__ BRG_OV518PLUS ;
 int EINVAL ;
 int EIO ;
 int OV511_RESET_NOREGS ;
 int PDEBUG (int,char*,int,int,int,int) ;
 int VIDEO_PALETTE_GREY ;
 int err (char*,...) ;
 int i2c_w (struct usb_ov511*,int,int) ;
 int i2c_w_mask (struct usb_ov511*,int,int,int) ;
 scalar_t__ ov518_color ;
 int ov518_reg_w32 (struct usb_ov511*,int,int,int) ;
 scalar_t__ ov51x_reset (struct usb_ov511*,int ) ;
 scalar_t__ ov51x_restart (struct usb_ov511*) ;
 scalar_t__ ov51x_stop (struct usb_ov511*) ;
 int reg_w (struct usb_ov511*,int,int) ;
 int reg_w_mask (struct usb_ov511*,int,int,int) ;

__attribute__((used)) static int
ov518_mode_init_regs(struct usb_ov511 *ov,
       int width, int height, int mode, int sub_flag)
{
 int hsegs, vsegs, hi_res;

 if (sub_flag) {
  width = ov->subw;
  height = ov->subh;
 }

 PDEBUG(3, "width:%d, height:%d, mode:%d, sub:%d",
        width, height, mode, sub_flag);

 if (width % 16 || height % 8) {
  err("Invalid size (%d, %d)", width, height);
  return -EINVAL;
 }

 if (width < ov->minwidth || height < ov->minheight) {
  err("Requested dimensions are too small");
  return -EINVAL;
 }

 if (width >= 320 && height >= 240) {
  hi_res = 1;
 } else if (width >= 320 || height >= 240) {
  err("Invalid width/height combination (%d, %d)", width, height);
  return -EINVAL;
 } else {
  hi_res = 0;
 }

 if (ov51x_stop(ov) < 0)
  return -EIO;



 reg_w(ov, 0x2b, 0);
 reg_w(ov, 0x2c, 0);
 reg_w(ov, 0x2d, 0);
 reg_w(ov, 0x2e, 0);
 reg_w(ov, 0x3b, 0);
 reg_w(ov, 0x3c, 0);
 reg_w(ov, 0x3d, 0);
 reg_w(ov, 0x3e, 0);

 if (ov->bridge == BRG_OV518 && ov518_color) {

  i2c_w_mask(ov, 0x15, 0x00, 0x01);

  if (mode == VIDEO_PALETTE_GREY) {

   reg_w_mask(ov, 0x20, 0x00, 0x08);


   reg_w_mask(ov, 0x28, 0x00, 0xf0);
   reg_w_mask(ov, 0x38, 0x00, 0xf0);
  } else {

   reg_w_mask(ov, 0x20, 0x08, 0x08);


   reg_w_mask(ov, 0x28, 0x80, 0xf0);
   reg_w_mask(ov, 0x38, 0x80, 0xf0);
  }
 } else {
  reg_w(ov, 0x28, (mode == VIDEO_PALETTE_GREY) ? 0x00:0x80);
  reg_w(ov, 0x38, (mode == VIDEO_PALETTE_GREY) ? 0x00:0x80);
 }

 hsegs = width / 16;
 vsegs = height / 4;

 reg_w(ov, 0x29, hsegs);
 reg_w(ov, 0x2a, vsegs);

 reg_w(ov, 0x39, hsegs);
 reg_w(ov, 0x3a, vsegs);


 reg_w(ov, 0x2f, 0x80);




 reg_w(ov, 0x51, 0x02);
 reg_w(ov, 0x22, 0x18);
 reg_w(ov, 0x23, 0xff);

 if (ov->bridge == BRG_OV518PLUS)
  reg_w(ov, 0x21, 0x19);
 else
  reg_w(ov, 0x71, 0x19);



 i2c_w(ov, 0x54, 0x23);

 reg_w(ov, 0x2f, 0x80);

 if (ov->bridge == BRG_OV518PLUS) {
  reg_w(ov, 0x24, 0x94);
  reg_w(ov, 0x25, 0x90);
  ov518_reg_w32(ov, 0xc4, 400, 2);
  ov518_reg_w32(ov, 0xc6, 540, 2);
  ov518_reg_w32(ov, 0xc7, 540, 2);
  ov518_reg_w32(ov, 0xc8, 108, 2);
  ov518_reg_w32(ov, 0xca, 131098, 3);
  ov518_reg_w32(ov, 0xcb, 532, 2);
  ov518_reg_w32(ov, 0xcc, 2400, 2);
  ov518_reg_w32(ov, 0xcd, 32, 2);
  ov518_reg_w32(ov, 0xce, 608, 2);
 } else {
  reg_w(ov, 0x24, 0x9f);
  reg_w(ov, 0x25, 0x90);
  ov518_reg_w32(ov, 0xc4, 400, 2);
  ov518_reg_w32(ov, 0xc6, 500, 2);
  ov518_reg_w32(ov, 0xc7, 500, 2);
  ov518_reg_w32(ov, 0xc8, 142, 2);
  ov518_reg_w32(ov, 0xca, 131098, 3);
  ov518_reg_w32(ov, 0xcb, 532, 2);
  ov518_reg_w32(ov, 0xcc, 2000, 2);
  ov518_reg_w32(ov, 0xcd, 32, 2);
  ov518_reg_w32(ov, 0xce, 608, 2);
 }

 reg_w(ov, 0x2f, 0x80);

 if (ov51x_restart(ov) < 0)
  return -EIO;


 if (ov51x_reset(ov, OV511_RESET_NOREGS) < 0)
  return -EIO;

 return 0;
}
