
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {int sensor; void* exposure; TYPE_1__* ctrls; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int val; } ;


 size_t BRIGHTNESS ;
 int reg_w1 (struct gspca_dev*,int,int) ;
 void* setexposure (struct gspca_dev*,unsigned int) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 unsigned int expo;
 int brightness;
 u8 k2;

 brightness = sd->ctrls[BRIGHTNESS].val;
 k2 = (brightness - 0x80) >> 2;
 switch (sd->sensor) {
 case 135:
  if (k2 > 0x1f)
   k2 = 0;
  break;
 case 133:
  expo = brightness << 12;
  if (expo > 0x002dc6c0)
   expo = 0x002dc6c0;
  else if (expo < 0x02a0)
   expo = 0x02a0;
  sd->exposure = setexposure(gspca_dev, expo);
  break;
 case 132:
 case 130:
  expo = brightness << 4;
  sd->exposure = setexposure(gspca_dev, expo);
  break;
 case 131:
  expo = brightness << 2;
  sd->exposure = setexposure(gspca_dev, expo);
  break;
 case 134:
 case 129:
  expo = brightness;
  sd->exposure = setexposure(gspca_dev, expo);
  return;
 case 128:
  expo = brightness << 2;
  sd->exposure = setexposure(gspca_dev, expo);
  k2 = brightness >> 3;
  break;
 }

 reg_w1(gspca_dev, 0x96, k2);
}
