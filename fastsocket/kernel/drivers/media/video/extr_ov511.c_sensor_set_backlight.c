
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; int backlight; } ;


 int EINVAL ;
 int EPERM ;
 int PDEBUG (int,char*,...) ;
 int err (char*) ;
 int i2c_w_mask (struct usb_ov511*,int,int,int) ;

__attribute__((used)) static int
sensor_set_backlight(struct usb_ov511 *ov, int enable)
{
 PDEBUG(4, " (%s)", enable ? "turn on" : "turn off");

 switch (ov->sensor) {
 case 131:
 case 129:
  i2c_w_mask(ov, 0x68, enable?0xe0:0xc0, 0xe0);
  i2c_w_mask(ov, 0x29, enable?0x08:0x00, 0x08);
  i2c_w_mask(ov, 0x28, enable?0x02:0x00, 0x02);
  break;
 case 134:
  i2c_w_mask(ov, 0x4e, enable?0xe0:0xc0, 0xe0);
  i2c_w_mask(ov, 0x29, enable?0x08:0x00, 0x08);
  i2c_w_mask(ov, 0x0e, enable?0x80:0x00, 0x80);
  break;
 case 133:
  i2c_w_mask(ov, 0x4e, enable?0x80:0x60, 0xe0);
  i2c_w_mask(ov, 0x29, enable?0x08:0x00, 0x08);
  i2c_w_mask(ov, 0x28, enable?0x02:0x00, 0x02);
  break;
 case 132:
 case 130:
 case 136:
 case 135:
 case 128:
  PDEBUG(5, "Unsupported with this sensor");
  return -EPERM;
 default:
  err("Sensor not supported for set_backlight");
  return -EINVAL;
 }

 ov->backlight = enable;

 return 0;
}
