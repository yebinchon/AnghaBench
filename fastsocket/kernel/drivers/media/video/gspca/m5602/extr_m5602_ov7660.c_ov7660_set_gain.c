
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int * sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
typedef int __s32 ;


 int D_V4L2 ;
 size_t GAIN_IDX ;
 int OV7660_GAIN ;
 int PDEBUG (int ,char*,int ) ;
 int m5602_write_sensor (struct sd*,int ,int *,int) ;

__attribute__((used)) static int ov7660_set_gain(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 u8 i2c_data;
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 PDEBUG(D_V4L2, "Setting gain to %d", val);

 sensor_settings[GAIN_IDX] = val;

 err = m5602_write_sensor(sd, OV7660_GAIN, &i2c_data, 1);
 return err;
}
