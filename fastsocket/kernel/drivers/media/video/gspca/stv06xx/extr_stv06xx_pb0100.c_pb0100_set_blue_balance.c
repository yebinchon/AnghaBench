
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int* sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
typedef int __s32 ;


 size_t AUTOGAIN_IDX ;
 size_t BLUE_BALANCE_IDX ;
 int D_V4L2 ;
 int EBUSY ;
 size_t GAIN_IDX ;
 int PB_BGAIN ;
 int PDEBUG (int ,char*,int,int) ;
 int stv06xx_write_sensor (struct sd*,int ,int) ;

__attribute__((used)) static int pb0100_set_blue_balance(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 if (sensor_settings[AUTOGAIN_IDX])
  return -EBUSY;

 sensor_settings[BLUE_BALANCE_IDX] = val;
 val += sensor_settings[GAIN_IDX];
 if (val < 0)
  val = 0;
 else if (val > 255)
  val = 255;

 err = stv06xx_write_sensor(sd, PB_BGAIN, val);
 PDEBUG(D_V4L2, "Set blue gain to %d, status: %d", val, err);

 return err;
}
