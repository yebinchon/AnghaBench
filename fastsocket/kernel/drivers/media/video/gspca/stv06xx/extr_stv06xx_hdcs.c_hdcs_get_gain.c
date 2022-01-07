
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {struct hdcs* sensor_priv; } ;
struct hdcs {int gain_cache; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;



__attribute__((used)) static int hdcs_get_gain(struct gspca_dev *gspca_dev, __s32 *val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct hdcs *hdcs = sd->sensor_priv;

 *val = hdcs->gain_cache;

 return 0;
}
