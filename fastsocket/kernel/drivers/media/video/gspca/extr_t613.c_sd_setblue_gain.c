
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int blue_gain; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef int __s32 ;


 int reg_w (struct gspca_dev*,int) ;

__attribute__((used)) static int sd_setblue_gain(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 sd->blue_gain = val;
 if (gspca_dev->streaming)
  reg_w(gspca_dev, (val << 8) + 0x88);
 return 0;
}
