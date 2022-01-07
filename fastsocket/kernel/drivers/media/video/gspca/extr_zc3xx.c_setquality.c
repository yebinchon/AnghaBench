
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int sensor; } ;
struct gspca_dev {int dummy; } ;


 int QUANT_VAL ;






 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void setquality(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 frxt;

 switch (sd->sensor) {
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  return;
 }

 reg_w(gspca_dev, QUANT_VAL, 0x0008);
 frxt = 0x30;
 reg_w(gspca_dev, frxt, 0x0007);

 frxt = 0xff;







 reg_w(gspca_dev, frxt, 0x0018);
}
