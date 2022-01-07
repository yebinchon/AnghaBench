
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sd {int sensor; TYPE_7__* ctrls; } ;
struct TYPE_13__ {int member_0; int member_1; } ;
struct TYPE_12__ {int member_0; int member_1; } ;
struct TYPE_11__ {int member_0; int member_1; } ;
struct TYPE_10__ {int member_0; int member_1; } ;
struct TYPE_9__ {int member_0; int member_1; } ;
struct TYPE_8__ {int member_0; int member_1; } ;
struct ov_i2c_regvals {TYPE_6__ member_5; TYPE_5__ member_4; TYPE_4__ member_3; TYPE_3__ member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_14__ {int val; } ;


 int ARRAY_SIZE (struct ov_i2c_regvals const*) ;
 size_t COLORS ;
 int OV7610_REG_SAT ;
 int i2c_w (struct sd*,int ,int) ;
 int write_i2c_regvals (struct sd*,struct ov_i2c_regvals const*,int ) ;

__attribute__((used)) static void setcolors(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int val;
 static const struct ov_i2c_regvals colors_7660[][6] = {
  {{0x4f, 0x28}, {0x50, 0x2a}, {0x51, 0x02}, {0x52, 0x0a},
   {0x53, 0x19}, {0x54, 0x23}},
  {{0x4f, 0x47}, {0x50, 0x4a}, {0x51, 0x03}, {0x52, 0x11},
   {0x53, 0x2c}, {0x54, 0x3e}},
  {{0x4f, 0x66}, {0x50, 0x6b}, {0x51, 0x05}, {0x52, 0x19},
   {0x53, 0x40}, {0x54, 0x59}},
  {{0x4f, 0x84}, {0x50, 0x8b}, {0x51, 0x06}, {0x52, 0x20},
   {0x53, 0x53}, {0x54, 0x73}},
  {{0x4f, 0xa3}, {0x50, 0xab}, {0x51, 0x08}, {0x52, 0x28},
   {0x53, 0x66}, {0x54, 0x8e}},
 };

 val = sd->ctrls[COLORS].val;
 switch (sd->sensor) {
 case 128:
 case 136:
 case 129:
 case 139:
 case 138:
 case 137:
  i2c_w(sd, OV7610_REG_SAT, val);
  break;
 case 135:
 case 134:




  i2c_w(sd, OV7610_REG_SAT, val);
  break;
 case 133:
 case 132:
  i2c_w(sd, OV7610_REG_SAT, val & 0xf0);
  break;
 case 131:
  write_i2c_regvals(sd, colors_7660[val],
     ARRAY_SIZE(colors_7660[0]));
  break;
 case 130:



  break;
 }
}
