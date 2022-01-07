
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
 size_t HFLIP_IDX ;
 int OV9650_MVFP ;
 int PDEBUG (int ,char*,int) ;
 size_t VFLIP_IDX ;
 int dmi_check_system (int ) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;
 int ov9650_flip_dmi_table ;

__attribute__((used)) static int ov9650_set_hflip(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 u8 i2c_data;
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 PDEBUG(D_V4L2, "Set horizontal flip to %d", val);

 sensor_settings[HFLIP_IDX] = val;

 if (!dmi_check_system(ov9650_flip_dmi_table))
  i2c_data = ((val & 0x01) << 5) |
    (sensor_settings[VFLIP_IDX] << 4);
 else
  i2c_data = ((val & 0x01) << 5) |
    (!sensor_settings[VFLIP_IDX] << 4);

 err = m5602_write_sensor(sd, OV9650_MVFP, &i2c_data, 1);

 return err;
}
