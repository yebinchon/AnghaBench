
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int blue; int red; } ;
struct gspca_dev {int dummy; } ;


 int reg_w1 (struct gspca_dev*,int,int ) ;

__attribute__((used)) static int set_redblue(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 reg_w1(gspca_dev, 0x118c, sd->red);
 reg_w1(gspca_dev, 0x118f, sd->blue);
 return 0;
}
