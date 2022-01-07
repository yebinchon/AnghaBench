
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ autogain; } ;
struct gspca_dev {int dummy; } ;
typedef scalar_t__ __s32 ;


 int reg_w (struct gspca_dev*,int) ;

__attribute__((used)) static int sd_setlowlight(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->autogain = val;
 if (val != 0)
  reg_w(gspca_dev, 0xf48e);
 else
  reg_w(gspca_dev, 0xb48e);
 return 0;
}
