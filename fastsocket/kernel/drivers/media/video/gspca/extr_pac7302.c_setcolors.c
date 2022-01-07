
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int const colors; } ;
struct gspca_dev {int dummy; } ;


 int const COLOR_MAX ;
 int D_CONF ;
 int D_STREAM ;
 int PDEBUG (int,char*,int const) ;
 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setcolors(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i, v;
 static const int a[9] =
  {217, -212, 0, -101, 170, -67, -38, -315, 355};
 static const int b[9] =
  {19, 106, 0, 19, 106, 1, 19, 106, 1};

 reg_w(gspca_dev, 0xff, 0x03);
 reg_w(gspca_dev, 0x11, 0x01);
 reg_w(gspca_dev, 0xff, 0x00);
 for (i = 0; i < 9; i++) {
  v = a[i] * sd->colors / COLOR_MAX + b[i];
  reg_w(gspca_dev, 0x0f + 2 * i, (v >> 8) & 0x07);
  reg_w(gspca_dev, 0x0f + 2 * i + 1, v);
 }
 reg_w(gspca_dev, 0xdc, 0x01);
 PDEBUG(D_CONF|D_STREAM, "color: %i", sd->colors);
}
