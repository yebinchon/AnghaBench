
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int * sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
typedef int __s32 ;


 int D_V4L2 ;
 size_t GAIN_IDX ;
 int PDEBUG (int ,char*,int ) ;

__attribute__((used)) static int po1030_get_gain(struct gspca_dev *gspca_dev, __s32 *val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 *val = sensor_settings[GAIN_IDX];
 PDEBUG(D_V4L2, "Read global gain %d", *val);
 return 0;
}
