
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int member_0; int member_1; } ;
typedef TYPE_2__ u8 ;
struct sd {TYPE_1__* ctrls; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_4__ {int val; } ;


 size_t SHARPNESS ;
 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,TYPE_2__ const,int) ;

__attribute__((used)) static void setsharpness(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int sharpness;
 static const u8 sharpness_tb[][2] = {
  {0x02, 0x03},
  {0x04, 0x07},
  {0x08, 0x0f},
  {0x10, 0x1e}
 };

 sharpness = sd->ctrls[SHARPNESS].val;
 reg_w(gspca_dev, sharpness_tb[sharpness][0], 0x01c6);
 reg_r(gspca_dev, 0x01c8);
 reg_r(gspca_dev, 0x01c9);
 reg_r(gspca_dev, 0x01ca);
 reg_w(gspca_dev, sharpness_tb[sharpness][1], 0x01cb);
}
