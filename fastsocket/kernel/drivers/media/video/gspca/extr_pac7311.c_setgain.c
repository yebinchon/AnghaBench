
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int gain; } ;
struct gspca_dev {int dummy; } ;


 int GAIN_MAX ;
 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int gain = GAIN_MAX - sd->gain;

 if (gain < 1)
  gain = 1;
 else if (gain > 245)
  gain = 245;
 reg_w(gspca_dev, 0xff, 0x04);
 reg_w(gspca_dev, 0x0e, 0x00);
 reg_w(gspca_dev, 0x0f, gain);


 reg_w(gspca_dev, 0x11, 0x01);
}
