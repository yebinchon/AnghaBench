
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {struct s5k83a_priv* sensor_priv; } ;
struct s5k83a_priv {int * settings; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 size_t EXPOSURE_IDX ;

__attribute__((used)) static int s5k83a_get_exposure(struct gspca_dev *gspca_dev, __s32 *val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct s5k83a_priv *sens_priv = sd->sensor_priv;

 *val = sens_priv->settings[EXPOSURE_IDX];
 return 0;
}
