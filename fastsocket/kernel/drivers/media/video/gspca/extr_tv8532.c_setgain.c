
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int gain; } ;
struct gspca_dev {int dummy; } ;


 int R20_GAIN_G1L ;
 int R22_GAIN_RL ;
 int R24_GAIN_BL ;
 int R26_GAIN_G2L ;
 int reg_w2 (struct gspca_dev*,int ,int ) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 reg_w2(gspca_dev, R20_GAIN_G1L, sd->gain);
 reg_w2(gspca_dev, R22_GAIN_RL, sd->gain);
 reg_w2(gspca_dev, R24_GAIN_BL, sd->gain);
 reg_w2(gspca_dev, R26_GAIN_G2L, sd->gain);
}
