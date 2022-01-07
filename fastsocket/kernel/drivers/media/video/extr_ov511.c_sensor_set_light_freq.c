
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; int lightfreq; } ;


 int EINVAL ;
 int EPERM ;
 int PDEBUG (int,char*,...) ;
 int err (char*,...) ;
 int i2c_w (struct usb_ov511*,int,int) ;
 int i2c_w_mask (struct usb_ov511*,int,int,int) ;

__attribute__((used)) static int
sensor_set_light_freq(struct usb_ov511 *ov, int freq)
{
 int sixty;

 PDEBUG(4, "%d Hz", freq);

 if (freq == 60)
  sixty = 1;
 else if (freq == 50)
  sixty = 0;
 else {
  err("Invalid light freq (%d Hz)", freq);
  return -EINVAL;
 }

 switch (ov->sensor) {
 case 132:
  i2c_w_mask(ov, 0x2a, sixty?0x00:0x80, 0x80);
  i2c_w(ov, 0x2b, sixty?0x00:0xac);
  i2c_w_mask(ov, 0x13, 0x10, 0x10);
  i2c_w_mask(ov, 0x13, 0x00, 0x10);
  break;
 case 131:
 case 130:
 case 129:
  i2c_w_mask(ov, 0x2a, sixty?0x00:0x80, 0x80);
  i2c_w(ov, 0x2b, sixty?0x00:0xac);
  i2c_w_mask(ov, 0x76, 0x01, 0x01);
  break;
 case 134:
 case 133:
  i2c_w(ov, 0x2b, sixty?0xa8:0x28);
  i2c_w(ov, 0x2a, sixty?0x84:0xa4);
  break;
 case 136:
 case 135:
 case 128:
  PDEBUG(5, "Unsupported with this sensor");
  return -EPERM;
 default:
  err("Sensor not supported for set_light_freq");
  return -EINVAL;
 }

 ov->lightfreq = freq;

 return 0;
}
