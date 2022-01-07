
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int* sensor_priv; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef int s32 ;
typedef int __s32 ;


 int D_V4L2 ;
 int OV7660_MVFP ;
 int PDEBUG (int ,char*,int) ;
 size_t VFLIP_IDX ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;
 int ov7660_start (struct sd*) ;

__attribute__((used)) static int ov7660_set_vflip(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 u8 i2c_data;
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 PDEBUG(D_V4L2, "Set vertical flip to %d", val);
 sensor_settings[VFLIP_IDX] = val;

 i2c_data = ((val & 0x01) << 4) | (sensor_settings[VFLIP_IDX] << 5);
 err = m5602_write_sensor(sd, OV7660_MVFP, &i2c_data, 1);
 if (err < 0)
  return err;


 if (gspca_dev->streaming)
  err = ov7660_start(sd);

 return err;
}
