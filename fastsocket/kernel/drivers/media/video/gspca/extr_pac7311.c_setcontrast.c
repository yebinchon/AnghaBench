
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int contrast; } ;
struct gspca_dev {int dummy; } ;


 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setcontrast(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_w(gspca_dev, 0xff, 0x04);
 reg_w(gspca_dev, 0x10, sd->contrast >> 4);

 reg_w(gspca_dev, 0x11, 0x01);
}
