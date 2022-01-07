
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


typedef int u8 ;
struct TYPE_14__ {size_t curr_mode; } ;
struct sd {int frame_rate; scalar_t__ sensor; TYPE_7__ gspca_dev; } ;
struct TYPE_13__ {int member_0; int member_1; int member_2; } ;
struct TYPE_12__ {int member_0; int member_1; int member_2; } ;
struct TYPE_11__ {int member_0; int member_1; int member_2; } ;
struct TYPE_10__ {int member_0; int member_1; int member_2; } ;
struct TYPE_9__ {int member_0; int member_1; int member_2; } ;
struct TYPE_8__ {int member_0; int member_1; int member_2; } ;


 int OV7670_R11_CLKRC ;
 scalar_t__ SEN_OV7660 ;
 scalar_t__ frame_rate ;
 int ov518_i2c_w (struct sd*,int ,int) ;
 int reg_w (struct sd*,int,int const) ;

__attribute__((used)) static void ov519_set_fr(struct sd *sd)
{
 int fr;
 u8 clock;





 static const u8 fr_tb[2][6][3] = {
  {{0x04, 0xff, 0x00},
   {0x04, 0x1f, 0x00},
   {0x04, 0x1b, 0x00},
   {0x04, 0x15, 0x00},
   {0x04, 0x09, 0x00},
   {0x04, 0x01, 0x00}},
  {{0x0c, 0xff, 0x00},
   {0x0c, 0x1f, 0x00},
   {0x0c, 0x1b, 0x00},
   {0x04, 0xff, 0x01},
   {0x04, 0x1f, 0x01},
   {0x04, 0x1b, 0x01}},
 };

 if (frame_rate > 0)
  sd->frame_rate = frame_rate;
 if (sd->frame_rate >= 30)
  fr = 0;
 else if (sd->frame_rate >= 25)
  fr = 1;
 else if (sd->frame_rate >= 20)
  fr = 2;
 else if (sd->frame_rate >= 15)
  fr = 3;
 else if (sd->frame_rate >= 10)
  fr = 4;
 else
  fr = 5;
 reg_w(sd, 0xa4, fr_tb[sd->gspca_dev.curr_mode][fr][0]);
 reg_w(sd, 0x23, fr_tb[sd->gspca_dev.curr_mode][fr][1]);
 clock = fr_tb[sd->gspca_dev.curr_mode][fr][2];
 if (sd->sensor == SEN_OV7660)
  clock |= 0x80;
 ov518_i2c_w(sd, OV7670_R11_CLKRC, clock);
}
