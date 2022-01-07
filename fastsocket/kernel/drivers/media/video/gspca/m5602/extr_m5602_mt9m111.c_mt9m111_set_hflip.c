
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
 int MT9M111_PAGE_MAP ;
 int MT9M111_SC_R_MODE_CONTEXT_B ;
 int PDEBUG (int ,char*,int) ;
 int m5602_read_sensor (struct sd*,int ,int*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int mt9m111_set_hflip(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 u8 data[2] = {0x00, 0x00};
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 PDEBUG(D_V4L2, "Set horizontal flip to %d", val);

 sensor_settings[HFLIP_IDX] = val;


 val = !val;


 err = m5602_write_sensor(sd, MT9M111_PAGE_MAP, data, 2);
 if (err < 0)
  return err;

 err = m5602_read_sensor(sd, MT9M111_SC_R_MODE_CONTEXT_B, data, 2);
 if (err < 0)
  return err;

 data[1] = (data[1] & 0xfd) | ((val << 1) & 0x02);
 err = m5602_write_sensor(sd, MT9M111_SC_R_MODE_CONTEXT_B,
     data, 2);
 return err;
}
