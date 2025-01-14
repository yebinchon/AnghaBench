
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
 int PDEBUG (int ,char*,int) ;
 int PO1030_INTEGLINES_H ;
 int PO1030_INTEGLINES_M ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int po1030_set_exposure(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;
 u8 i2c_data;
 int err;

 sensor_settings[EXPOSURE_IDX] = val;
 PDEBUG(D_V4L2, "Set exposure to %d", val & 0xffff);

 i2c_data = ((val & 0xff00) >> 8);
 PDEBUG(D_V4L2, "Set exposure to high byte to 0x%x",
        i2c_data);

 err = m5602_write_sensor(sd, PO1030_INTEGLINES_H,
      &i2c_data, 1);
 if (err < 0)
  return err;

 i2c_data = (val & 0xff);
 PDEBUG(D_V4L2, "Set exposure to low byte to 0x%x",
        i2c_data);
 err = m5602_write_sensor(sd, PO1030_INTEGLINES_M,
      &i2c_data, 1);

 return err;
}
