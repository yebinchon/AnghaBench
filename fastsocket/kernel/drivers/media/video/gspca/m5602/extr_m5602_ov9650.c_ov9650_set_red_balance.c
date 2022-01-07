
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
 int OV9650_RED ;
 int PDEBUG (int ,char*,int) ;
 size_t RED_BALANCE_IDX ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int ov9650_set_red_balance(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 u8 i2c_data;
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 PDEBUG(D_V4L2, "Set red gain to %d", val);

 sensor_settings[RED_BALANCE_IDX] = val;

 i2c_data = val & 0xff;
 err = m5602_write_sensor(sd, OV9650_RED, &i2c_data, 1);
 return err;
}
