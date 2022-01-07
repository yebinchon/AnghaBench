
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int subw; int subh; scalar_t__ sensor; int minwidth; int minheight; scalar_t__ compress; } ;


 int EINVAL ;
 int EIO ;
 int OV511_RESET_OMNICE ;
 int PDEBUG (int,char*,int,int,int,int) ;
 int R511_CAM_LNCNT ;
 int R511_CAM_LNDIV ;
 int R511_CAM_OPTS ;
 int R511_CAM_PXCNT ;
 int R511_CAM_PXDIV ;
 int R511_CAM_UV_EN ;
 int R511_COMP_EN ;
 int R511_COMP_LUT_EN ;
 int R511_SNAP_LNCNT ;
 int R511_SNAP_LNDIV ;
 int R511_SNAP_OPTS ;
 int R511_SNAP_PXCNT ;
 int R511_SNAP_PXDIV ;
 int R511_SNAP_UV_EN ;
 scalar_t__ SEN_SAA7111A ;
 int VIDEO_PALETTE_GREY ;
 int err (char*,...) ;
 int ov51x_reset (struct usb_ov511*,int ) ;
 scalar_t__ ov51x_restart (struct usb_ov511*) ;
 scalar_t__ ov51x_stop (struct usb_ov511*) ;
 int reg_w (struct usb_ov511*,int ,int) ;

__attribute__((used)) static int
ov511_mode_init_regs(struct usb_ov511 *ov,
       int width, int height, int mode, int sub_flag)
{
 int hsegs, vsegs;

 if (sub_flag) {
  width = ov->subw;
  height = ov->subh;
 }

 PDEBUG(3, "width:%d, height:%d, mode:%d, sub:%d",
        width, height, mode, sub_flag);



 if (ov->sensor == SEN_SAA7111A) {
  if (width == 320 && height == 240) {

  } else if (width == 640 && height == 480) {


   width = 320;
  } else {
   err("SAA7111A only allows 320x240 or 640x480");
   return -EINVAL;
  }
 }


 if (width % 8 || height % 8) {
  err("Invalid size (%d, %d) (mode = %d)", width, height, mode);
  return -EINVAL;
 }

 if (width < ov->minwidth || height < ov->minheight) {
  err("Requested dimensions are too small");
  return -EINVAL;
 }

 if (ov51x_stop(ov) < 0)
  return -EIO;

 if (mode == VIDEO_PALETTE_GREY) {
  reg_w(ov, R511_CAM_UV_EN, 0x00);
  reg_w(ov, R511_SNAP_UV_EN, 0x00);
  reg_w(ov, R511_SNAP_OPTS, 0x01);
 } else {
  reg_w(ov, R511_CAM_UV_EN, 0x01);
  reg_w(ov, R511_SNAP_UV_EN, 0x01);
  reg_w(ov, R511_SNAP_OPTS, 0x03);
 }




 hsegs = (width >> 3) - 1;
 vsegs = (height >> 3) - 1;

 reg_w(ov, R511_CAM_PXCNT, hsegs);
 reg_w(ov, R511_CAM_LNCNT, vsegs);
 reg_w(ov, R511_CAM_PXDIV, 0x00);
 reg_w(ov, R511_CAM_LNDIV, 0x00);


 reg_w(ov, R511_CAM_OPTS, 0x03);


 reg_w(ov, R511_SNAP_PXCNT, hsegs);
 reg_w(ov, R511_SNAP_LNCNT, vsegs);
 reg_w(ov, R511_SNAP_PXDIV, 0x00);
 reg_w(ov, R511_SNAP_LNDIV, 0x00);

 if (ov->compress) {

  reg_w(ov, R511_COMP_EN, 0x07);
  reg_w(ov, R511_COMP_LUT_EN, 0x03);
  ov51x_reset(ov, OV511_RESET_OMNICE);
 }

 if (ov51x_restart(ov) < 0)
  return -EIO;

 return 0;
}
