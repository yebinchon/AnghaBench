
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int* sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
typedef int __s32 ;


 int D_V4L2 ;
 size_t EXPOSURE_IDX ;
 int OV9650_AECH ;
 int OV9650_AECHM ;
 int OV9650_COM1 ;
 int PDEBUG (int ,char*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int ov9650_set_exposure(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;
 u8 i2c_data;
 int err;

 PDEBUG(D_V4L2, "Set exposure to %d", val);

 sensor_settings[EXPOSURE_IDX] = val;

 i2c_data = (val >> 10) & 0x3f;
 err = m5602_write_sensor(sd, OV9650_AECHM,
      &i2c_data, 1);
 if (err < 0)
  return err;


 i2c_data = (val >> 2) & 0xff;
 err = m5602_write_sensor(sd, OV9650_AECH,
      &i2c_data, 1);
 if (err < 0)
  return err;


 i2c_data = val & 0x03;
 err = m5602_write_sensor(sd, OV9650_COM1, &i2c_data, 1);
 return err;
}
