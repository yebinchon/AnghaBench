
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ cam_type; int sensor_type; int exposure; int min_clockdiv; } ;
struct gspca_dev {int ctrl_dis; int width; } ;


 scalar_t__ CAM_TYPE_CIF ;
 scalar_t__ CAM_TYPE_VGA ;
 int EXPOSURE_IDX ;
 int MR97310A_EXPOSURE_DEFAULT ;
 int sensor_write1 (struct gspca_dev*,int,int) ;
 int sensor_write_reg (struct gspca_dev*,int,int ,int*,int) ;

__attribute__((used)) static void setexposure(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int exposure = MR97310A_EXPOSURE_DEFAULT;
 u8 buf[2];

 if (gspca_dev->ctrl_dis & (1 << EXPOSURE_IDX))
  return;

 if (sd->cam_type == CAM_TYPE_CIF && sd->sensor_type == 1) {


  exposure = (sd->exposure * 9267) / 10000 + 300;
  sensor_write1(gspca_dev, 3, exposure >> 4);
  sensor_write1(gspca_dev, 4, exposure & 0x0f);
 } else if (sd->sensor_type == 2) {
  exposure = sd->exposure;
  exposure >>= 3;
  sensor_write1(gspca_dev, 3, exposure >> 8);
  sensor_write1(gspca_dev, 4, exposure & 0xff);
 } else {







  u8 clockdiv = (60 * sd->exposure + 7999) / 8000;


  if (clockdiv < sd->min_clockdiv && gspca_dev->width >= 320)
   clockdiv = sd->min_clockdiv;
  else if (clockdiv < 2)
   clockdiv = 2;

  if (sd->cam_type == CAM_TYPE_VGA && clockdiv < 4)
   clockdiv = 4;



  exposure = (60 * 511 * sd->exposure) / (8000 * clockdiv);
  if (exposure > 511)
   exposure = 511;


  exposure = 511 - exposure;

  buf[0] = exposure & 0xff;
  buf[1] = exposure >> 8;
  sensor_write_reg(gspca_dev, 0x0e, 0, buf, 2);
  sensor_write1(gspca_dev, 0x02, clockdiv);
 }
}
