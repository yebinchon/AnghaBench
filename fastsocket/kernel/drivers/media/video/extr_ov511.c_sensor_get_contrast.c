
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; unsigned short contrast; } ;


 int EPERM ;
 int OV7610_REG_CNT ;
 int PDEBUG (int,char*,...) ;





 int i2c_r (struct usb_ov511*,int) ;

__attribute__((used)) static int
sensor_get_contrast(struct usb_ov511 *ov, unsigned short *val)
{
 int rc;

 switch (ov->sensor) {
 case 130:
 case 132:
  rc = i2c_r(ov, OV7610_REG_CNT);
  if (rc < 0)
   return rc;
  else
   *val = rc << 8;
  break;
 case 131:
  rc = i2c_r(ov, OV7610_REG_CNT);
  if (rc < 0)
   return rc;
  else
   *val = rc << 12;
  break;
 case 129:

  rc = i2c_r(ov, 0x64);
  if (rc < 0)
   return rc;
  else
   *val = (rc & 0xfe) << 8;
  break;
 case 128:
  *val = ov->contrast;
  break;
 default:
  PDEBUG(3, "Unsupported with this sensor");
  return -EPERM;
 }

 PDEBUG(3, "%d", *val);
 ov->contrast = *val;

 return 0;
}
