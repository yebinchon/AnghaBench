
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
 int PDEBUG (int ,char*,int) ;
 int PO1030_CONTROL2 ;
 size_t VFLIP_IDX ;
 int m5602_read_sensor (struct sd*,int ,int*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int po1030_set_vflip(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;
 u8 i2c_data;
 int err;

 sensor_settings[VFLIP_IDX] = val;

 PDEBUG(D_V4L2, "Set vflip %d", val);
 err = m5602_read_sensor(sd, PO1030_CONTROL2, &i2c_data, 1);
 if (err < 0)
  return err;

 i2c_data = (i2c_data & 0xbf) | ((val & 0x01) << 6);

 err = m5602_write_sensor(sd, PO1030_CONTROL2,
     &i2c_data, 1);

 return err;
}
