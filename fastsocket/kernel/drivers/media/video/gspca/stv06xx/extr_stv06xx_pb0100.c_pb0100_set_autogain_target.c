
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int* sensor_priv; } ;
struct gspca_dev {int width; int height; } ;
typedef int s32 ;
typedef int __s32 ;


 size_t AUTOGAIN_TARGET_IDX ;
 int D_V4L2 ;
 int PB_R21 ;
 int PB_R22 ;
 int PDEBUG (int ,char*,int,int) ;
 int stv06xx_write_sensor (struct sd*,int ,int) ;

__attribute__((used)) static int pb0100_set_autogain_target(struct gspca_dev *gspca_dev, __s32 val)
{
 int err, totalpixels, brightpixels, darkpixels;
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 sensor_settings[AUTOGAIN_TARGET_IDX] = val;



 totalpixels = gspca_dev->width * gspca_dev->height;
 totalpixels = totalpixels/(8*8) + totalpixels/(64*64);

 brightpixels = (totalpixels * val) >> 8;
 darkpixels = totalpixels - brightpixels;
 err = stv06xx_write_sensor(sd, PB_R21, brightpixels);
 if (!err)
  err = stv06xx_write_sensor(sd, PB_R22, darkpixels);

 PDEBUG(D_V4L2, "Set autogain target to %d, status: %d", val, err);

 return err;
}
