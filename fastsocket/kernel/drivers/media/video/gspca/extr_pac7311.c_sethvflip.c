
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ vflip; scalar_t__ hflip; } ;
struct gspca_dev {int dummy; } ;
typedef int __u8 ;


 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sethvflip(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 __u8 data;

 reg_w(gspca_dev, 0xff, 0x04);
 data = (sd->hflip ? 0x04 : 0x00) | (sd->vflip ? 0x08 : 0x00);
 reg_w(gspca_dev, 0x21, data);


 reg_w(gspca_dev, 0x11, 0x01);
}
