
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; unsigned short colour; } ;


 int EPERM ;
 int OV7610_REG_SAT ;
 int PDEBUG (int,char*,...) ;






 int i2c_r (struct usb_ov511*,int ) ;

__attribute__((used)) static int
sensor_get_saturation(struct usb_ov511 *ov, unsigned short *val)
{
 int rc;

 switch (ov->sensor) {
 case 131:
 case 129:
 case 133:
 case 132:
  rc = i2c_r(ov, OV7610_REG_SAT);
  if (rc < 0)
   return rc;
  else
   *val = rc << 8;
  break;
 case 130:






  rc = i2c_r(ov, OV7610_REG_SAT);
  if (rc < 0)
   return rc;
  else
   *val = rc << 8;
  break;
 case 128:
  *val = ov->colour;
  break;
 default:
  PDEBUG(3, "Unsupported with this sensor");
  return -EPERM;
 }

 PDEBUG(3, "%d", *val);
 ov->colour = *val;

 return 0;
}
