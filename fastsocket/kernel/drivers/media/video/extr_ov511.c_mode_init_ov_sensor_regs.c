
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; scalar_t__ bridge; int subw; int subh; scalar_t__ compress; } ;


 scalar_t__ BRG_OV518 ;
 int EINVAL ;
 int PDEBUG (int,char*,int) ;





 int VIDEO_PALETTE_GREY ;
 int clockdiv ;
 int err (char*) ;
 int framedrop ;
 int i2c_w (struct usb_ov511*,int,int) ;
 int i2c_w_mask (struct usb_ov511*,int,int,int) ;
 scalar_t__ ov518_color ;
 scalar_t__ testpat ;

__attribute__((used)) static int
mode_init_ov_sensor_regs(struct usb_ov511 *ov, int width, int height,
    int mode, int sub_flag, int qvga)
{
 int clock;



 switch (ov->sensor) {
 case 130:
  i2c_w(ov, 0x14, qvga?0x24:0x04);
  break;
 case 129:

  i2c_w(ov, 0x14, qvga?0xa4:0x84);
  i2c_w_mask(ov, 0x28, qvga?0x00:0x20, 0x20);
  i2c_w(ov, 0x24, qvga?0x20:0x3a);
  i2c_w(ov, 0x25, qvga?0x30:0x60);
  i2c_w_mask(ov, 0x2d, qvga?0x40:0x00, 0x40);
  i2c_w_mask(ov, 0x67, qvga?0xf0:0x90, 0xf0);
  i2c_w_mask(ov, 0x74, qvga?0x20:0x00, 0x20);
  break;
 case 128:

  i2c_w(ov, 0x14, qvga?0xa4:0x84);
  break;
 case 132:
  i2c_w(ov, 0x14, qvga?0x24:0x04);
  break;
 case 131:
  i2c_w(ov, 0x14, qvga?0xa0:0x80);
  break;
 default:
  err("Invalid sensor");
  return -EINVAL;
 }



 if (mode == VIDEO_PALETTE_GREY) {
  if (ov->sensor == 130 || ov->sensor == 128) {

   i2c_w_mask(ov, 0x0e, 0x40, 0x40);
  }

  if (ov->sensor == 131 && ov->bridge == BRG_OV518
      && ov518_color) {
   i2c_w_mask(ov, 0x12, 0x00, 0x10);
   i2c_w_mask(ov, 0x13, 0x00, 0x20);
  } else {
   i2c_w_mask(ov, 0x13, 0x20, 0x20);
  }
 } else {
  if (ov->sensor == 130 || ov->sensor == 128) {

   i2c_w_mask(ov, 0x0e, 0x00, 0x40);
  }







  if (ov->sensor == 131 && ov->bridge == BRG_OV518
      && ov518_color) {
   i2c_w_mask(ov, 0x12, 0x10, 0x10);
   i2c_w_mask(ov, 0x13, 0x20, 0x20);
  } else {
   i2c_w_mask(ov, 0x13, 0x00, 0x20);
  }
 }





 if (ov->sensor == 132 || ov->sensor == 131)
 {


  i2c_w(ov, 0x2a, 0x04);

  if (ov->compress) {

   clock = 3;
  } else if (clockdiv == -1) {
   clock = 3;
  } else {
   clock = clockdiv;
  }

  PDEBUG(4, "Setting clock divisor to %d", clock);

  i2c_w(ov, 0x11, clock);

  i2c_w(ov, 0x2a, 0x84);



  i2c_w(ov, 0x2d, 0x85);
 }
 else
 {
  if (ov->compress) {
   clock = 1;
  } else if (clockdiv == -1) {

   clock = ((sub_flag ? ov->subw * ov->subh
      : width * height)
     * (mode == VIDEO_PALETTE_GREY ? 2 : 3) / 2)
     / 66000;
  } else {
   clock = clockdiv;
  }

  PDEBUG(4, "Setting clock divisor to %d", clock);

  i2c_w(ov, 0x11, clock);
 }



 if (framedrop >= 0)
  i2c_w(ov, 0x16, framedrop);


 i2c_w_mask(ov, 0x12, (testpat?0x02:0x00), 0x02);


 i2c_w_mask(ov, 0x12, 0x04, 0x04);




 if (ov->sensor == 130 || ov->sensor == 128) {
  if (width == 640 && height == 480)
   i2c_w(ov, 0x35, 0x9e);
  else
   i2c_w(ov, 0x35, 0x1e);
 }

 return 0;
}
