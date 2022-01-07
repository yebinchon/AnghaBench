
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ streaming; } ;
struct sd {TYPE_1__ gspca_dev; TYPE_2__* ctrls; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_4__ {int val; } ;


 size_t HFLIP ;
 int OV519_R51_RESET1 ;
 int OV7670_MVFP_MIRROR ;
 int OV7670_MVFP_VFLIP ;
 int OV7670_R1E_MVFP ;
 size_t VFLIP ;
 int i2c_w_mask (struct sd*,int ,int,int) ;
 int reg_w (struct sd*,int ,int) ;

__attribute__((used)) static void sethvflip(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->gspca_dev.streaming)
  reg_w(sd, OV519_R51_RESET1, 0x0f);
 i2c_w_mask(sd, OV7670_R1E_MVFP,
  OV7670_MVFP_MIRROR * sd->ctrls[HFLIP].val
   | OV7670_MVFP_VFLIP * sd->ctrls[VFLIP].val,
  OV7670_MVFP_MIRROR | OV7670_MVFP_VFLIP);
 if (sd->gspca_dev.streaming)
  reg_w(sd, OV519_R51_RESET1, 0x00);
}
