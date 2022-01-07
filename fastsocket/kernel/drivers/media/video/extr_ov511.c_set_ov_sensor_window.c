
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; scalar_t__ bclass; int subx; int subw; int suby; int subh; } ;


 scalar_t__ BCL_OV518 ;
 int EINVAL ;





 int dump_i2c_regs (struct usb_ov511*) ;
 scalar_t__ dump_sensor ;
 int err (char*) ;
 int i2c_w (struct usb_ov511*,int,int) ;
 int mode_init_ov_sensor_regs (struct usb_ov511*,int,int,int,int,int) ;

__attribute__((used)) static int
set_ov_sensor_window(struct usb_ov511 *ov, int width, int height, int mode,
       int sub_flag)
{
 int ret;
 int hwsbase, hwebase, vwsbase, vwebase, hwsize, vwsize;
 int hoffset, voffset, hwscale = 0, vwscale = 0;



 switch (ov->sensor) {
 case 130:
 case 128:
  hwsbase = 0x38;
  hwebase = 0x3a;
  vwsbase = vwebase = 0x05;
  break;
 case 132:
 case 131:
  hwsbase = 0x38;
  hwebase = 0x3a;
  vwsbase = 0x05;
  vwebase = 0x06;
  break;
 case 129:
  hwsbase = 0x2f;
  hwebase = 0x2f;
  vwsbase = vwebase = 0x05;
  break;
 default:
  err("Invalid sensor");
  return -EINVAL;
 }

 if (ov->sensor == 132 || ov->sensor == 131) {

  if ((width > 176 && height > 144)
      || ov->bclass == BCL_OV518) {
   ret = mode_init_ov_sensor_regs(ov, width, height,
    mode, sub_flag, 0);
   if (ret < 0)
    return ret;
   hwscale = 1;
   vwscale = 1;
   hwsize = 352;
   vwsize = 288;
  } else if (width > 176 || height > 144) {
   err("Illegal dimensions");
   return -EINVAL;
  } else {
   ret = mode_init_ov_sensor_regs(ov, width, height,
    mode, sub_flag, 1);
   if (ret < 0)
    return ret;
   hwsize = 176;
   vwsize = 144;
  }
 } else {
  if (width > 320 && height > 240) {
   ret = mode_init_ov_sensor_regs(ov, width, height,
    mode, sub_flag, 0);
   if (ret < 0)
    return ret;
   hwscale = 2;
   vwscale = 1;
   hwsize = 640;
   vwsize = 480;
  } else if (width > 320 || height > 240) {
   err("Illegal dimensions");
   return -EINVAL;
  } else {
   ret = mode_init_ov_sensor_regs(ov, width, height,
    mode, sub_flag, 1);
   if (ret < 0)
    return ret;
   hwscale = 1;
   hwsize = 320;
   vwsize = 240;
  }
 }


 hoffset = ((hwsize - width) / 2) >> hwscale;
 voffset = ((vwsize - height) / 2) >> vwscale;


 if (sub_flag) {
  i2c_w(ov, 0x17, hwsbase+(ov->subx>>hwscale));
  i2c_w(ov, 0x18, hwebase+((ov->subx+ov->subw)>>hwscale));
  i2c_w(ov, 0x19, vwsbase+(ov->suby>>vwscale));
  i2c_w(ov, 0x1a, vwebase+((ov->suby+ov->subh)>>vwscale));
 } else {
  i2c_w(ov, 0x17, hwsbase + hoffset);
  i2c_w(ov, 0x18, hwebase + hoffset + (hwsize>>hwscale));
  i2c_w(ov, 0x19, vwsbase + voffset);
  i2c_w(ov, 0x1a, vwebase + voffset + (vwsize>>vwscale));
 }






 return 0;
}
