
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sd {int colors; } ;
struct gspca_dev {int dummy; } ;


 int reg_w (struct gspca_dev*,int) ;

__attribute__((used)) static void setcolors(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u16 reg_to_write;

 reg_to_write = 0x80bb + sd->colors * 0x100;
 reg_w(gspca_dev, reg_to_write);
}
