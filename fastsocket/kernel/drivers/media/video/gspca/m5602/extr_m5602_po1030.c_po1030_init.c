
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int gspca_dev; int * sensor_priv; } ;
typedef int s32 ;


 int ARRAY_SIZE (int**) ;
 size_t AUTO_EXPOSURE_IDX ;
 size_t AUTO_WHITE_BALANCE_IDX ;
 size_t BLUE_BALANCE_IDX ;

 int EINVAL ;
 size_t EXPOSURE_IDX ;
 size_t GAIN_IDX ;
 size_t GREEN_BALANCE_IDX ;
 size_t HFLIP_IDX ;
 size_t RED_BALANCE_IDX ;

 size_t VFLIP_IDX ;
 scalar_t__ dump_sensor ;
 int info (char*) ;
 int** init_po1030 ;
 int m5602_write_bridge (struct sd*,int,int) ;
 int m5602_write_sensor (struct sd*,int,int*,int) ;
 int po1030_dump_registers (struct sd*) ;
 int po1030_set_auto_exposure (int *,int ) ;
 int po1030_set_auto_white_balance (int *,int ) ;
 int po1030_set_blue_balance (int *,int ) ;
 int po1030_set_exposure (int *,int ) ;
 int po1030_set_gain (int *,int ) ;
 int po1030_set_green_balance (int *,int ) ;
 int po1030_set_hflip (int *,int ) ;
 int po1030_set_red_balance (int *,int ) ;
 int po1030_set_vflip (int *,int ) ;

int po1030_init(struct sd *sd)
{
 s32 *sensor_settings = sd->sensor_priv;
 int i, err = 0;


 for (i = 0; i < ARRAY_SIZE(init_po1030) && !err; i++) {
  u8 data[2] = {0x00, 0x00};

  switch (init_po1030[i][0]) {
  case 129:
   err = m5602_write_bridge(sd,
    init_po1030[i][1],
    init_po1030[i][2]);
   break;

  case 128:
   data[0] = init_po1030[i][2];
   err = m5602_write_sensor(sd,
    init_po1030[i][1], data, 1);
   break;

  default:
   info("Invalid stream command, exiting init");
   return -EINVAL;
  }
 }
 if (err < 0)
  return err;

 if (dump_sensor)
  po1030_dump_registers(sd);

 err = po1030_set_exposure(&sd->gspca_dev,
       sensor_settings[EXPOSURE_IDX]);
 if (err < 0)
  return err;

 err = po1030_set_gain(&sd->gspca_dev, sensor_settings[GAIN_IDX]);
 if (err < 0)
  return err;

 err = po1030_set_hflip(&sd->gspca_dev, sensor_settings[HFLIP_IDX]);
 if (err < 0)
  return err;

 err = po1030_set_vflip(&sd->gspca_dev, sensor_settings[VFLIP_IDX]);
 if (err < 0)
  return err;

 err = po1030_set_red_balance(&sd->gspca_dev,
          sensor_settings[RED_BALANCE_IDX]);
 if (err < 0)
  return err;

 err = po1030_set_blue_balance(&sd->gspca_dev,
          sensor_settings[BLUE_BALANCE_IDX]);
 if (err < 0)
  return err;

 err = po1030_set_green_balance(&sd->gspca_dev,
           sensor_settings[GREEN_BALANCE_IDX]);
 if (err < 0)
  return err;

 err = po1030_set_auto_white_balance(&sd->gspca_dev,
    sensor_settings[AUTO_WHITE_BALANCE_IDX]);
 if (err < 0)
  return err;

 err = po1030_set_auto_exposure(&sd->gspca_dev,
    sensor_settings[AUTO_EXPOSURE_IDX]);
 return err;
}
