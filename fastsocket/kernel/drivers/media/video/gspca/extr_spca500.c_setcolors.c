
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int colors; } ;
struct gspca_dev {int dummy; } ;


 int reg_w (struct gspca_dev*,int,int,int ) ;

__attribute__((used)) static void setcolors(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_w(gspca_dev, 0x00, 0x8169, sd->colors);
}
