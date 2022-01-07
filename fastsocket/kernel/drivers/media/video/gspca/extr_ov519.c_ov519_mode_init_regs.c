
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cam_mode; } ;
struct TYPE_6__ {int width; int height; size_t curr_mode; TYPE_2__ cam; } ;
struct sd {int sensor; scalar_t__ frame_rate; int clockdiv; TYPE_3__ gspca_dev; } ;
struct ov_regvals {int member_0; int member_1; } ;
struct TYPE_4__ {scalar_t__ priv; } ;


 int ARRAY_SIZE (struct ov_regvals const*) ;
 int D_STREAM ;
 int OV519_R10_H_SIZE ;
 int OV519_R11_V_SIZE ;
 int OV519_R12_X_OFFSETL ;
 int OV519_R13_X_OFFSETH ;
 int OV519_R14_Y_OFFSETL ;
 int OV519_R15_Y_OFFSETH ;
 int OV519_R16_DIVIDER ;
 int OV519_R20_DFR ;
 int OV519_R25_FORMAT ;

 int PDEBUG (int ,char*,int) ;





 scalar_t__ frame_rate ;
 int reg_w (struct sd*,int,int) ;
 int reg_w_mask (struct sd*,int ,int,int) ;
 int write_regvals (struct sd*,struct ov_regvals const*,int ) ;

__attribute__((used)) static void ov519_mode_init_regs(struct sd *sd)
{
 static const struct ov_regvals mode_init_519_ov7670[] = {
  { 0x5d, 0x03 },
  { 0x53, 0x9f },
  { 133, 0x0f },
  { 0xa2, 0x20 },
  { 0xa3, 0x18 },
  { 0xa4, 0x04 },
  { 0xa5, 0x28 },
  { 0x37, 0x00 },
  { 0x55, 0x02 },

  { 0x20, 0x0c },
  { 0x21, 0x38 },
  { 0x22, 0x1d },
  { 0x17, 0x50 },
  { 0x37, 0x00 },
  { 0x40, 0xff },
  { 0x46, 0x00 },
  { 0x59, 0x04 },
  { 0xff, 0x00 },

 };

 static const struct ov_regvals mode_init_519[] = {
  { 0x5d, 0x03 },
  { 0x53, 0x9f },
  { 133, 0x0f },
  { 0xa2, 0x20 },
  { 0xa3, 0x18 },
  { 0xa4, 0x04 },
  { 0xa5, 0x28 },
  { 0x37, 0x00 },
  { 0x55, 0x02 },

  { 0x22, 0x1d },
  { 0x17, 0x50 },
  { 0x37, 0x00 },
  { 0x40, 0xff },
  { 0x46, 0x00 },
  { 0x59, 0x04 },
  { 0xff, 0x00 },

 };


 switch (sd->sensor) {
 default:
  write_regvals(sd, mode_init_519, ARRAY_SIZE(mode_init_519));
  if (sd->sensor == 132 ||
      sd->sensor == 131) {

   reg_w_mask(sd, OV519_R20_DFR, 0x10, 0x10);
  }
  break;
 case 130:
  return;
 case 129:
  write_regvals(sd, mode_init_519_ov7670,
    ARRAY_SIZE(mode_init_519_ov7670));
  break;
 }

 reg_w(sd, OV519_R10_H_SIZE, sd->gspca_dev.width >> 4);
 reg_w(sd, OV519_R11_V_SIZE, sd->gspca_dev.height >> 3);
 if (sd->sensor == 129 &&
     sd->gspca_dev.cam.cam_mode[sd->gspca_dev.curr_mode].priv)
  reg_w(sd, OV519_R12_X_OFFSETL, 0x04);
 else if (sd->sensor == 131 &&
     sd->gspca_dev.cam.cam_mode[sd->gspca_dev.curr_mode].priv)
  reg_w(sd, OV519_R12_X_OFFSETL, 0x01);
 else
  reg_w(sd, OV519_R12_X_OFFSETL, 0x00);
 reg_w(sd, OV519_R13_X_OFFSETH, 0x00);
 reg_w(sd, OV519_R14_Y_OFFSETL, 0x00);
 reg_w(sd, OV519_R15_Y_OFFSETH, 0x00);
 reg_w(sd, OV519_R16_DIVIDER, 0x00);
 reg_w(sd, OV519_R25_FORMAT, 0x03);
 reg_w(sd, 0x26, 0x00);


 if (frame_rate > 0)
  sd->frame_rate = frame_rate;


 sd->clockdiv = 0;
 switch (sd->sensor) {
 case 132:
 case 131:
  switch (sd->frame_rate) {
  default:

   reg_w(sd, 0xa4, 0x0c);
   reg_w(sd, 0x23, 0xff);
   break;
  case 25:
   reg_w(sd, 0xa4, 0x0c);
   reg_w(sd, 0x23, 0x1f);
   break;
  case 20:
   reg_w(sd, 0xa4, 0x0c);
   reg_w(sd, 0x23, 0x1b);
   break;
  case 15:
   reg_w(sd, 0xa4, 0x04);
   reg_w(sd, 0x23, 0xff);
   sd->clockdiv = 1;
   break;
  case 10:
   reg_w(sd, 0xa4, 0x04);
   reg_w(sd, 0x23, 0x1f);
   sd->clockdiv = 1;
   break;
  case 5:
   reg_w(sd, 0xa4, 0x04);
   reg_w(sd, 0x23, 0x1b);
   sd->clockdiv = 1;
   break;
  }
  break;
 case 128:
  switch (sd->frame_rate) {
  default:

   reg_w(sd, 0xa4, 0x06);
   reg_w(sd, 0x23, 0xff);
   break;
  case 10:
   reg_w(sd, 0xa4, 0x06);
   reg_w(sd, 0x23, 0x1f);
   break;
  case 5:
   reg_w(sd, 0xa4, 0x06);
   reg_w(sd, 0x23, 0x1b);
   break;
  }
  break;
 case 129:
  PDEBUG(D_STREAM, "Setting framerate to %d fps",
     (sd->frame_rate == 0) ? 15 : sd->frame_rate);
  reg_w(sd, 0xa4, 0x10);
  switch (sd->frame_rate) {
  case 30:
   reg_w(sd, 0x23, 0xff);
   break;
  case 20:
   reg_w(sd, 0x23, 0x1b);
   break;
  default:

   reg_w(sd, 0x23, 0xff);
   sd->clockdiv = 1;
   break;
  }
  break;
 }
}
