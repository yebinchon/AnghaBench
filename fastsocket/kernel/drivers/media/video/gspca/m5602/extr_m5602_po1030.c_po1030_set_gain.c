
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
 int PDEBUG (int ,char*,int) ;
 int PO1030_GLOBALGAIN ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int po1030_set_gain(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;
 u8 i2c_data;
 int err;

 sensor_settings[GAIN_IDX] = val;

 i2c_data = val & 0xff;
 PDEBUG(D_V4L2, "Set global gain to %d", i2c_data);
 err = m5602_write_sensor(sd, PO1030_GLOBALGAIN,
     &i2c_data, 1);
 return err;
}
