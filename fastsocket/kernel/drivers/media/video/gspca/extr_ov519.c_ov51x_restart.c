
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int bridge; scalar_t__ stopped; } ;
 int D_STREAM ;
 int OV519_R51_RESET1 ;
 int PDEBUG (int ,char*) ;
 int R51x_SYS_RESET ;
 int reg_w (struct sd*,int,int) ;
 int reg_w_mask (struct sd*,int,int,int) ;

__attribute__((used)) static inline void ov51x_restart(struct sd *sd)
{
 PDEBUG(D_STREAM, "restarting");
 if (!sd->stopped)
  return;
 sd->stopped = 0;


 switch (sd->bridge) {
 case 134:
 case 133:
  reg_w(sd, R51x_SYS_RESET, 0x00);
  break;
 case 132:
 case 131:
  reg_w(sd, 0x2f, 0x80);
  reg_w(sd, R51x_SYS_RESET, 0x00);
  break;
 case 130:
  reg_w(sd, OV519_R51_RESET1, 0x0f);
  reg_w(sd, OV519_R51_RESET1, 0x00);
  reg_w(sd, 0x22, 0x1d);
  break;
 case 129:
  reg_w_mask(sd, 0x0f, 0x02, 0x02);
  break;
 case 128:
  reg_w(sd, 0x3c, 0x8a05);
  break;
 }
}
