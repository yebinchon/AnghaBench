
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_25__ {size_t curr_mode; } ;
struct sd {TYPE_9__ gspca_dev; } ;
struct TYPE_16__ {int member_0; int member_1; } ;
struct TYPE_24__ {int member_0; int member_1; } ;
struct TYPE_23__ {int member_0; int member_1; } ;
struct TYPE_22__ {int member_0; int member_1; } ;
struct TYPE_21__ {int member_0; int member_1; } ;
struct TYPE_20__ {int member_0; int member_1; } ;
struct TYPE_19__ {int member_0; int member_1; } ;
struct TYPE_18__ {int member_0; int member_1; } ;
struct TYPE_17__ {int member_0; int member_1; } ;
struct ov_regvals {int member_1; TYPE_10__ member_0; TYPE_8__ member_2; TYPE_7__ member_9; TYPE_6__ member_8; TYPE_5__ member_7; TYPE_4__ member_6; TYPE_3__ member_5; TYPE_2__ member_4; TYPE_1__ member_3; } ;
struct ov_i2c_regvals {int member_1; TYPE_10__ member_0; TYPE_8__ member_2; TYPE_7__ member_9; TYPE_6__ member_8; TYPE_5__ member_7; TYPE_4__ member_6; TYPE_3__ member_5; TYPE_2__ member_4; TYPE_1__ member_3; } ;


 int ARRAY_SIZE (struct ov_regvals const*) ;






 int write_i2c_regvals (struct sd*,struct ov_regvals const*,int ) ;
 int write_regvals (struct sd*,struct ov_regvals const*,int ) ;

__attribute__((used)) static void ov519_set_mode(struct sd *sd)
{
 static const struct ov_regvals bridge_ov7660[2][10] = {
  {{0x10, 0x14}, {0x11, 0x1e}, {0x12, 0x00}, {0x13, 0x00},
   {0x14, 0x00}, {0x15, 0x00}, {0x16, 0x00}, {0x20, 0x0c},
   {0x25, 0x01}, {0x26, 0x00}},
  {{0x10, 0x28}, {0x11, 0x3c}, {0x12, 0x00}, {0x13, 0x00},
   {0x14, 0x00}, {0x15, 0x00}, {0x16, 0x00}, {0x20, 0x0c},
   {0x25, 0x03}, {0x26, 0x00}}
 };
 static const struct ov_i2c_regvals sensor_ov7660[2][3] = {
  {{0x12, 0x00}, {0x24, 0x00}, {0x0c, 0x0c}},
  {{0x12, 0x00}, {0x04, 0x00}, {0x0c, 0x00}}
 };
 static const struct ov_i2c_regvals sensor_ov7660_2[] = {
  {132, 0x13},
  {131, 0x01},
  {128, 0x92},
  {130, 0x02},
  {129, 0x7a},
  {133, 0x00},




 };

 write_regvals(sd, bridge_ov7660[sd->gspca_dev.curr_mode],
   ARRAY_SIZE(bridge_ov7660[0]));
 write_i2c_regvals(sd, sensor_ov7660[sd->gspca_dev.curr_mode],
   ARRAY_SIZE(sensor_ov7660[0]));
 write_i2c_regvals(sd, sensor_ov7660_2,
   ARRAY_SIZE(sensor_ov7660_2));
}
