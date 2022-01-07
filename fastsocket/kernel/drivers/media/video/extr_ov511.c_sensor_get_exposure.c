
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; unsigned char exposure; } ;


 int EINVAL ;
 int EPERM ;
 int PDEBUG (int,char*,...) ;
 int err (char*) ;
 int i2c_r (struct usb_ov511*,int) ;

__attribute__((used)) static int
sensor_get_exposure(struct usb_ov511 *ov, unsigned char *val)
{
 int rc;

 switch (ov->sensor) {
 case 132:
 case 134:
 case 133:
 case 131:
 case 130:
 case 129:
  rc = i2c_r(ov, 0x10);
  if (rc < 0)
   return rc;
  else
   *val = rc;
  break;
 case 136:
 case 135:
 case 128:
  val = ((void*)0);
  PDEBUG(3, "Unsupported with this sensor");
  return -EPERM;
 default:
  err("Sensor not supported for get_exposure");
  return -EINVAL;
 }

 PDEBUG(3, "%d", *val);
 ov->exposure = *val;

 return 0;
}
