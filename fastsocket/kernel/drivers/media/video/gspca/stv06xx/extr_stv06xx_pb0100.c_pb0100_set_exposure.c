
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__* sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef scalar_t__ s32 ;
typedef scalar_t__ __s32 ;


 size_t AUTOGAIN_IDX ;
 int D_V4L2 ;
 int EBUSY ;
 size_t EXPOSURE_IDX ;
 int PB_RINTTIME ;
 int PDEBUG (int ,char*,scalar_t__,int) ;
 int stv06xx_write_sensor (struct sd*,int ,scalar_t__) ;

__attribute__((used)) static int pb0100_set_exposure(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 if (sensor_settings[AUTOGAIN_IDX])
  return -EBUSY;

 sensor_settings[EXPOSURE_IDX] = val;
 err = stv06xx_write_sensor(sd, PB_RINTTIME, val);
 PDEBUG(D_V4L2, "Set exposure to %d, status: %d", val, err);

 return err;
}
