
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int brightness; } ;
struct gspca_dev {int dummy; } ;
typedef int __u8 ;


 scalar_t__ ET_O_RED ;
 int reg_w_val (struct gspca_dev*,scalar_t__,int ) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i;
 __u8 brightness = sd->brightness;

 for (i = 0; i < 4; i++)
  reg_w_val(gspca_dev, ET_O_RED + i, brightness);
}
