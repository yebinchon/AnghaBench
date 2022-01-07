
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ov511 {int maxwidth; int maxheight; int minwidth; int minheight; int has_decoder; int num_inputs; int brightness; int contrast; int colour; int hue; scalar_t__ bclass; TYPE_1__* dev; int sensor; scalar_t__ stop_during_set; int norm; scalar_t__ pal; } ;
struct ov511_regvals {int member_1; int member_2; int const member_0; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BCL_OV511 ;


 int PDEBUG (int,char*) ;
 int SEN_SAA7111A ;
 int VIDEO_MODE_AUTO ;
 int dev_info (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 int err (char*) ;
 int i2c_r (struct usb_ov511*,int) ;
 scalar_t__ ov51x_init_saa_sensor (struct usb_ov511*) ;
 int reg_w (struct usb_ov511*,int,int) ;
 scalar_t__ write_regvals (struct usb_ov511*,struct ov511_regvals*) ;

__attribute__((used)) static int
saa7111a_configure(struct usb_ov511 *ov)
{
 int rc;



 static struct ov511_regvals aRegvalsNormSAA7111A[] = {
  { 128, 0x06, 0xce },
  { 128, 0x07, 0x00 },
  { 128, 0x10, 0x44 },
  { 128, 0x0e, 0x01 },
  { 128, 0x00, 0x00 },
  { 128, 0x01, 0x00 },
  { 128, 0x03, 0x23 },
  { 128, 0x04, 0x00 },
  { 128, 0x05, 0x00 },
  { 128, 0x08, 0xc8 },
  { 128, 0x09, 0x01 },
  { 128, 0x0a, 0x80 },
  { 128, 0x0b, 0x40 },
  { 128, 0x0c, 0x40 },
  { 128, 0x0d, 0x00 },
  { 128, 0x0f, 0x00 },
  { 128, 0x11, 0x0c },
  { 128, 0x12, 0x00 },
  { 128, 0x13, 0x00 },
  { 128, 0x14, 0x00 },
  { 128, 0x15, 0x00 },
  { 128, 0x16, 0x00 },
  { 128, 0x17, 0x00 },
  { 128, 0x02, 0xc0 },
  { 129, 0x0, 0x00 },
 };
 if (ov->pal) {
  ov->maxwidth = 320;
  ov->maxheight = 240;
 } else {
  ov->maxwidth = 640;
  ov->maxheight = 480;
 }

 ov->minwidth = 320;
 ov->minheight = 240;

 ov->has_decoder = 1;
 ov->num_inputs = 8;
 ov->norm = VIDEO_MODE_AUTO;
 ov->stop_during_set = 0;



 ov->brightness = 0x80 << 8;
 ov->contrast = 0x40 << 9;
 ov->colour = 0x40 << 9;
 ov->hue = 32768;

 PDEBUG(4, "Writing SAA7111A registers");
 if (write_regvals(ov, aRegvalsNormSAA7111A))
  return -1;



 rc = i2c_r(ov, 0x00);

 if (rc < 0) {
  err("Error detecting sensor version");
  return -1;
 } else {
  dev_info(&ov->dev->dev,
    "Sensor is an SAA7111A (version 0x%x)\n", rc);
  ov->sensor = SEN_SAA7111A;
 }




 if (ov->bclass == BCL_OV511)
  reg_w(ov, 0x11, 0x00);
 else
  dev_warn(&ov->dev->dev,
    "SAA7111A not yet supported with OV518/OV518+\n");

 return 0;
}
