
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int * sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
typedef int __s32 ;


 size_t AUTO_WHITE_BALANCE_IDX ;

__attribute__((used)) static int ov7660_get_auto_white_balance(struct gspca_dev *gspca_dev,
      __s32 *val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 *val = sensor_settings[AUTO_WHITE_BALANCE_IDX];
 return 0;
}
