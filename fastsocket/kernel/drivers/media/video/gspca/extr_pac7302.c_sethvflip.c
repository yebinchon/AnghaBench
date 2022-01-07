
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int hflip; int flags; int vflip; } ;
struct gspca_dev {int dummy; } ;


 int FL_HFLIP ;
 int FL_VFLIP ;
 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sethvflip(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 data, hflip, vflip;

 hflip = sd->hflip;
 if (sd->flags & FL_HFLIP)
  hflip = !hflip;
 vflip = sd->vflip;
 if (sd->flags & FL_VFLIP)
  vflip = !vflip;

 reg_w(gspca_dev, 0xff, 0x03);
 data = (hflip ? 0x08 : 0x00) | (vflip ? 0x04 : 0x00);
 reg_w(gspca_dev, 0x21, data);


 reg_w(gspca_dev, 0x11, 0x01);
}
