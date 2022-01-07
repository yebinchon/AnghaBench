
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; } ;


 int EINVAL ;
 int PDEBUG (int,char*,int) ;

 int VIDEO_MODE_AUTO ;
 int VIDEO_MODE_NTSC ;
 int VIDEO_MODE_PAL ;
 int VIDEO_MODE_SECAM ;
 int i2c_w_mask (struct usb_ov511*,int,int,int) ;

__attribute__((used)) static int
decoder_set_norm(struct usb_ov511 *ov, int norm)
{
 PDEBUG(4, "%d", norm);

 switch (ov->sensor) {
 case 128:
 {
  int reg_8, reg_e;

  if (norm == VIDEO_MODE_NTSC) {
   reg_8 = 0x40;
   reg_e = 0x00;
  } else if (norm == VIDEO_MODE_PAL) {
   reg_8 = 0x00;
   reg_e = 0x00;
  } else if (norm == VIDEO_MODE_AUTO) {
   reg_8 = 0x80;
   reg_e = 0x00;
  } else if (norm == VIDEO_MODE_SECAM) {
   reg_8 = 0x00;
   reg_e = 0x50;
  } else {
   return -EINVAL;
  }

  i2c_w_mask(ov, 0x08, reg_8, 0xc0);
  i2c_w_mask(ov, 0x0e, reg_e, 0x70);
  break;
 }
 default:
  return -EINVAL;
 }

 return 0;
}
