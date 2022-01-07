
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct sd {struct s5k83a_priv* sensor_priv; } ;
struct s5k83a_priv {void** settings; } ;
struct gspca_dev {int dummy; } ;
typedef void* __s32 ;


 size_t BRIGHTNESS_IDX ;
 int S5K83A_BRIGHTNESS ;
 int m5602_write_sensor (struct sd*,int ,void**,int) ;

__attribute__((used)) static int s5k83a_set_brightness(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 u8 data[1];
 struct sd *sd = (struct sd *) gspca_dev;
 struct s5k83a_priv *sens_priv = sd->sensor_priv;

 sens_priv->settings[BRIGHTNESS_IDX] = val;
 data[0] = val;
 err = m5602_write_sensor(sd, S5K83A_BRIGHTNESS, data, 1);
 return err;
}
