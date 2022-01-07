
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int gain; } ;
struct gspca_dev {int dummy; } ;


 int pac207_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 pac207_write_reg(gspca_dev, 0x0e, sd->gain);
 pac207_write_reg(gspca_dev, 0x13, 0x01);
 pac207_write_reg(gspca_dev, 0x1c, 0x01);
}
