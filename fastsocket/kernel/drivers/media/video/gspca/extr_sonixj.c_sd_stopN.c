
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int reg01; int reg17; int sensor; } ;
struct gspca_dev {int dummy; } ;


 int LED ;
 int SCL_SEL_OD ;
 int SEN_CLK_EN ;
 int SYS_SEL_48M ;
 int S_PWR_DN ;
 int V_TX_EN ;
 int i2c_w8 (struct gspca_dev*,int const*) ;
 int reg_w1 (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 static const u8 stophv7131[] =
  { 0xa1, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00, 0x10 };
 static const u8 stopmi0360[] =
  { 0xb1, 0x5d, 0x07, 0x00, 0x00, 0x00, 0x00, 0x10 };
 static const u8 stopov7648[] =
  { 0xa1, 0x21, 0x76, 0x20, 0x00, 0x00, 0x00, 0x10 };
 static const u8 stopsoi768[] =
  { 0xa1, 0x21, 0x12, 0x80, 0x00, 0x00, 0x00, 0x10 };
 u8 reg01;
 u8 reg17;

 reg01 = sd->reg01;
 reg17 = sd->reg17 & ~SEN_CLK_EN;
 switch (sd->sensor) {
 case 141:
 case 140:
 case 130:
 case 128:
  reg01 |= LED;
  reg_w1(gspca_dev, 0x01, reg01);
  reg01 &= ~(LED | V_TX_EN);
  reg_w1(gspca_dev, 0x01, reg01);

  break;
 case 139:
  reg01 &= ~V_TX_EN;
  reg_w1(gspca_dev, 0x01, reg01);
  i2c_w8(gspca_dev, stophv7131);
  break;
 case 138:
 case 137:
  reg01 &= ~V_TX_EN;
  reg_w1(gspca_dev, 0x01, reg01);

  i2c_w8(gspca_dev, stopmi0360);
  break;
 case 136:
 case 135:
 case 131:
  reg01 &= ~V_TX_EN;
  reg_w1(gspca_dev, 0x01, reg01);
  break;
 case 134:
 case 133:
  reg01 &= ~V_TX_EN;
  reg_w1(gspca_dev, 0x01, reg01);
  i2c_w8(gspca_dev, stopov7648);
  break;
 case 132:
  reg01 &= ~V_TX_EN;
  reg_w1(gspca_dev, 0x01, reg01);
  break;
 case 129:
  i2c_w8(gspca_dev, stopsoi768);
  break;
 }

 reg01 |= SCL_SEL_OD;
 reg_w1(gspca_dev, 0x01, reg01);
 reg01 |= S_PWR_DN;
 reg_w1(gspca_dev, 0x01, reg01);
 reg_w1(gspca_dev, 0x17, reg17);
 reg01 &= ~SYS_SEL_48M;
 reg_w1(gspca_dev, 0x01, reg01);
 reg01 |= LED;
 reg_w1(gspca_dev, 0x01, reg01);


}
