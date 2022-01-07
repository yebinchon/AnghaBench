
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
 int MT9M111_SC_GREEN_1_GAIN ;
 int MT9M111_SC_GREEN_2_GAIN ;
 int PDEBUG (int ,char*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int mt9m111_set_green_balance(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 u8 data[2];
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 sensor_settings[GREEN_BALANCE_IDX] = val;
 data[1] = (val & 0xff);
 data[0] = (val & 0xff00) >> 8;

 PDEBUG(D_V4L2, "Set green balance %d", val);
 err = m5602_write_sensor(sd, MT9M111_SC_GREEN_1_GAIN,
     data, 2);
 if (err < 0)
  return err;

 return m5602_write_sensor(sd, MT9M111_SC_GREEN_2_GAIN,
      data, 2);
}
