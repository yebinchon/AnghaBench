
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
 int PDEBUG (int ,char*,int) ;
 int S5K4AA_COLSTART_LO ;
 int S5K4AA_PAGE_MAP ;
 int S5K4AA_PAGE_MAP_2 ;
 int S5K4AA_READ_MODE ;
 int S5K4AA_RM_H_FLIP ;
 scalar_t__ dmi_check_system (int ) ;
 int m5602_read_sensor (struct sd*,int ,int*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;
 int s5k4aa_vflip_dmi_table ;

__attribute__((used)) static int s5k4aa_set_hflip(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;
 u8 data = S5K4AA_PAGE_MAP_2;
 int err;

 sensor_settings[HFLIP_IDX] = val;

 PDEBUG(D_V4L2, "Set horizontal flip to %d", val);
 err = m5602_write_sensor(sd, S5K4AA_PAGE_MAP, &data, 1);
 if (err < 0)
  return err;

 err = m5602_read_sensor(sd, S5K4AA_READ_MODE, &data, 1);
 if (err < 0)
  return err;

 if (dmi_check_system(s5k4aa_vflip_dmi_table))
  val = !val;

 data = ((data & ~S5K4AA_RM_H_FLIP) | ((val & 0x01) << 6));
 err = m5602_write_sensor(sd, S5K4AA_READ_MODE, &data, 1);
 if (err < 0)
  return err;

 err = m5602_read_sensor(sd, S5K4AA_COLSTART_LO, &data, 1);
 if (err < 0)
  return err;
 if (val)
  data &= 0xfe;
 else
  data |= 0x01;
 err = m5602_write_sensor(sd, S5K4AA_COLSTART_LO, &data, 1);
 return err;
}
