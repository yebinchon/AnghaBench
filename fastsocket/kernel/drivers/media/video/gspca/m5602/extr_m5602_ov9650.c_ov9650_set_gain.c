
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
 size_t GAIN_IDX ;
 int OV9650_GAIN ;
 int OV9650_VREF ;
 int PDEBUG (int ,char*,int) ;
 int m5602_read_sensor (struct sd*,int ,int*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int ov9650_set_gain(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 u8 i2c_data;
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 PDEBUG(D_V4L2, "Setting gain to %d", val);

 sensor_settings[GAIN_IDX] = val;




 err = m5602_read_sensor(sd, OV9650_VREF, &i2c_data, 1);
 if (err < 0)
  return err;


 i2c_data = ((val & 0x0300) >> 2) |
   (i2c_data & 0x3f);
 err = m5602_write_sensor(sd, OV9650_VREF, &i2c_data, 1);
 if (err < 0)
  return err;


 i2c_data = val & 0xff;
 err = m5602_write_sensor(sd, OV9650_GAIN, &i2c_data, 1);
 return err;
}
