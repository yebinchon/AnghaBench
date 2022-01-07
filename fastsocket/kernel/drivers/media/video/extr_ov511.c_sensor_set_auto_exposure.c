
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; int auto_exp; } ;


 int EINVAL ;
 int EPERM ;
 int PDEBUG (int,char*,...) ;
 int err (char*) ;
 int i2c_w_mask (struct usb_ov511*,int,int,int) ;

__attribute__((used)) static int
sensor_set_auto_exposure(struct usb_ov511 *ov, int enable)
{
 PDEBUG(4, " (%s)", enable ? "turn on" : "turn off");

 switch (ov->sensor) {
 case 132:
  i2c_w_mask(ov, 0x29, enable?0x00:0x80, 0x80);
  break;
 case 134:
 case 131:
 case 130:
 case 129:
  i2c_w_mask(ov, 0x13, enable?0x01:0x00, 0x01);
  break;
 case 133:
  i2c_w_mask(ov, 0x28, enable?0x00:0x10, 0x10);
  break;
 case 136:
 case 135:
 case 128:
  PDEBUG(5, "Unsupported with this sensor");
  return -EPERM;
 default:
  err("Sensor not supported for set_auto_exposure");
  return -EINVAL;
 }

 ov->auto_exp = enable;

 return 0;
}
