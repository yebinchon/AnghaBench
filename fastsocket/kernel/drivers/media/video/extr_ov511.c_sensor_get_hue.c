
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; unsigned short hue; } ;


 int EPERM ;
 int OV7610_REG_BLUE ;
 int PDEBUG (int,char*,...) ;





 int i2c_r (struct usb_ov511*,int) ;

__attribute__((used)) static int
sensor_get_hue(struct usb_ov511 *ov, unsigned short *val)
{
 int rc;

 switch (ov->sensor) {
 case 130:
 case 132:
 case 131:
  rc = i2c_r(ov, OV7610_REG_BLUE);
  if (rc < 0)
   return rc;
  else
   *val = rc << 8;
  break;
 case 129:
  rc = i2c_r(ov, 0x7a);
  if (rc < 0)
   return rc;
  else
   *val = rc << 8;
  break;
 case 128:
  *val = ov->hue;
  break;
 default:
  PDEBUG(3, "Unsupported with this sensor");
  return -EPERM;
 }

 PDEBUG(3, "%d", *val);
 ov->hue = *val;

 return 0;
}
