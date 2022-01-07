
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int* sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
typedef int __s32 ;


 int D_V4L2 ;
 size_t GAIN_IDX ;
 int PDEBUG (int ,char*,int) ;
 int VV6410_ANALOGGAIN ;
 int stv06xx_write_sensor (struct sd*,int ,int) ;

__attribute__((used)) static int vv6410_set_analog_gain(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 sensor_settings[GAIN_IDX] = val;
 PDEBUG(D_V4L2, "Set analog gain to %d", val);
 err = stv06xx_write_sensor(sd, VV6410_ANALOGGAIN, 0xf0 | (val & 0xf));

 return (err < 0) ? err : 0;
}
