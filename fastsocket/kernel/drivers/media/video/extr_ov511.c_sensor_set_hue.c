
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; unsigned short hue; scalar_t__ stop_during_set; } ;


 int EIO ;
 int EPERM ;
 int OV7610_REG_BLUE ;
 int OV7610_REG_RED ;
 int PDEBUG (int,char*,...) ;





 int i2c_w (struct usb_ov511*,int,unsigned short) ;
 scalar_t__ ov51x_restart (struct usb_ov511*) ;
 scalar_t__ ov51x_stop (struct usb_ov511*) ;

__attribute__((used)) static int
sensor_set_hue(struct usb_ov511 *ov, unsigned short val)
{
 int rc;

 PDEBUG(3, "%d", val);

 if (ov->stop_during_set)
  if (ov51x_stop(ov) < 0)
   return -EIO;

 switch (ov->sensor) {
 case 130:
 case 132:
 case 131:
  rc = i2c_w(ov, OV7610_REG_RED, 0xFF - (val >> 8));
  if (rc < 0)
   goto out;

  rc = i2c_w(ov, OV7610_REG_BLUE, val >> 8);
  if (rc < 0)
   goto out;
  break;
 case 129:
  break;
 case 128:
  rc = i2c_w(ov, 0x0d, (val + 32768) >> 8);
  if (rc < 0)
   goto out;
  break;
 default:
  PDEBUG(3, "Unsupported with this sensor");
  rc = -EPERM;
  goto out;
 }

 rc = 0;
 ov->hue = val;
out:
 if (ov51x_restart(ov) < 0)
  return -EIO;

 return rc;
}
