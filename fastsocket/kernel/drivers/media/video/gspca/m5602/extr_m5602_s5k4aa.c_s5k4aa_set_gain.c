
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
 int S5K4AA_GAIN ;
 int S5K4AA_PAGE_MAP ;
 int S5K4AA_PAGE_MAP_2 ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int s5k4aa_set_gain(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;
 u8 data = S5K4AA_PAGE_MAP_2;
 int err;

 sensor_settings[GAIN_IDX] = val;

 PDEBUG(D_V4L2, "Set gain to %d", val);
 err = m5602_write_sensor(sd, S5K4AA_PAGE_MAP, &data, 1);
 if (err < 0)
  return err;

 data = val & 0xff;
 err = m5602_write_sensor(sd, S5K4AA_GAIN, &data, 1);

 return err;
}
