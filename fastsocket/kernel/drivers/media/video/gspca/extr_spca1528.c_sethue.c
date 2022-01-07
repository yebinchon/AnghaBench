
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int hue; } ;
struct gspca_dev {int dummy; } ;


 int reg_wb (struct gspca_dev*,int,int,int,int ) ;

__attribute__((used)) static void sethue(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_wb(gspca_dev, 0xc2, 0x0000, 0x0000, sd->hue);
}
