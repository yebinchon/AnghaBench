
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {struct s5k83a_priv* sensor_priv; } ;
struct s5k83a_priv {int* settings; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 size_t GAIN_IDX ;
 int S5K83A_GAIN ;
 int m5602_write_sensor (struct sd*,int,int*,int) ;

__attribute__((used)) static int s5k83a_set_gain(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 u8 data[2];
 struct sd *sd = (struct sd *) gspca_dev;
 struct s5k83a_priv *sens_priv = sd->sensor_priv;

 sens_priv->settings[GAIN_IDX] = val;

 data[0] = 0x00;
 data[1] = 0x20;
 err = m5602_write_sensor(sd, 0x14, data, 2);
 if (err < 0)
  return err;

 data[0] = 0x01;
 data[1] = 0x00;
 err = m5602_write_sensor(sd, 0x0d, data, 2);
 if (err < 0)
  return err;



 data[0] = val >> 3;
 data[1] = val >> 1;
 err = m5602_write_sensor(sd, S5K83A_GAIN, data, 2);

 return err;
}
