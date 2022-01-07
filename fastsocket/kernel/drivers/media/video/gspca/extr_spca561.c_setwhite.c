
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int white; scalar_t__ chip_revision; int contrast; } ;
struct gspca_dev {int dev; } ;
typedef int __u8 ;
typedef int __u16 ;


 scalar_t__ Rev012A ;
 int reg_w_val (int ,int,int) ;

__attribute__((used)) static void setwhite(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 __u16 white;
 __u8 blue, red;
 __u16 reg;


 white = sd->white;
 red = 0x20 + white * 3 / 8;
 blue = 0x90 - white * 5 / 8;
 if (sd->chip_revision == Rev012A) {
  reg = 0x8614;
 } else {
  reg = 0x8651;
  red += sd->contrast - 0x20;
  blue += sd->contrast - 0x20;
 }
 reg_w_val(gspca_dev->dev, reg, red);
 reg_w_val(gspca_dev->dev, reg + 2, blue);
}
