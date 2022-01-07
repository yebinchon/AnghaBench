
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ov511 {int maxwidth; int maxheight; int minwidth; int minheight; int brightness; int contrast; int colour; int hue; int sensor; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int PDEBUG (int,char*) ;
 int SEN_KS0127 ;
 int SEN_KS0127B ;
 int dev_info (int *,char*) ;
 int err (char*) ;
 int i2c_r (struct usb_ov511*,int) ;
 scalar_t__ ov51x_init_ks_sensor (struct usb_ov511*) ;

__attribute__((used)) static int
ks0127_configure(struct usb_ov511 *ov)
{
 int rc;
 rc = i2c_r(ov, 0x00);
 if (rc < 0) {
  err("Error detecting sensor type");
  return -1;
 } else if (rc & 0x08) {
  rc = i2c_r(ov, 0x3d);
  if (rc < 0) {
   err("Error detecting sensor type");
   return -1;
  } else if ((rc & 0x0f) == 0) {
   dev_info(&ov->dev->dev, "Sensor is a KS0127\n");
   ov->sensor = SEN_KS0127;
  } else if ((rc & 0x0f) == 9) {
   dev_info(&ov->dev->dev, "Sensor is a KS0127B Rev. A\n");
   ov->sensor = SEN_KS0127B;
  }
 } else {
  err("Error: Sensor is an unsupported KS0122");
  return -1;
 }


 ov->maxwidth = 640;
 ov->maxheight = 480;
 ov->minwidth = 64;
 ov->minheight = 48;


 ov->brightness = 0x80 << 8;
 ov->contrast = 0x80 << 8;
 ov->colour = 0x80 << 8;
 ov->hue = 0x80 << 8;


 err("This sensor is not supported yet.");
 return -1;

 return 0;
}
