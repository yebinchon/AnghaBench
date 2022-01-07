
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; int mirror; } ;


 int EINVAL ;
 int EPERM ;
 int PDEBUG (int,char*,...) ;
 int err (char*) ;
 int i2c_w_mask (struct usb_ov511*,int,int,int) ;

__attribute__((used)) static int
sensor_set_mirror(struct usb_ov511 *ov, int enable)
{
 PDEBUG(4, " (%s)", enable ? "turn on" : "turn off");

 switch (ov->sensor) {
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
  i2c_w_mask(ov, 0x12, enable?0x40:0x00, 0x40);
  break;
 case 136:
 case 135:
 case 128:
  PDEBUG(5, "Unsupported with this sensor");
  return -EPERM;
 default:
  err("Sensor not supported for set_mirror");
  return -EINVAL;
 }

 ov->mirror = enable;

 return 0;
}
