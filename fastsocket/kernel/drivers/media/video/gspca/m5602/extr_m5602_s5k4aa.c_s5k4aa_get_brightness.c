
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int * sensor_priv; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
typedef int __s32 ;


 size_t BRIGHTNESS_IDX ;
 int D_V4L2 ;
 int PDEBUG (int ,char*,int ) ;

__attribute__((used)) static int s5k4aa_get_brightness(struct gspca_dev *gspca_dev, __s32 *val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s32 *sensor_settings = sd->sensor_priv;

 *val = sensor_settings[BRIGHTNESS_IDX];
 PDEBUG(D_V4L2, "Read brightness %d", *val);
 return 0;
}
