
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
 size_t GREEN_BALANCE_IDX ;
 int PDEBUG (int ,char*,int) ;
 int PO1030_GREEN_1_GAIN ;
 int PO1030_GREEN_2_GAIN ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int po1030_set_green_balance(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;
 u8 i2c_data;
 int err;

 sensor_settings[GREEN_BALANCE_IDX] = val;
 i2c_data = val & 0xff;
 PDEBUG(D_V4L2, "Set green gain to %d", i2c_data);

 err = m5602_write_sensor(sd, PO1030_GREEN_1_GAIN,
      &i2c_data, 1);
 if (err < 0)
  return err;

 return m5602_write_sensor(sd, PO1030_GREEN_2_GAIN,
     &i2c_data, 1);
}
