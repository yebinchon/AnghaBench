
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int bridge; scalar_t__ snapshot_needs_reset; } ;
struct gspca_dev {int dummy; } ;







 int R51x_SYS_RESET ;
 int R51x_SYS_SNAP ;
 int reg_w (struct sd*,int ,int) ;

__attribute__((used)) static void sd_reset_snapshot(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (!sd->snapshot_needs_reset)
  return;




 sd->snapshot_needs_reset = 0;

 switch (sd->bridge) {
 case 132:
 case 131:
  reg_w(sd, R51x_SYS_SNAP, 0x02);
  reg_w(sd, R51x_SYS_SNAP, 0x00);
  break;
 case 130:
 case 129:
  reg_w(sd, R51x_SYS_SNAP, 0x02);
  reg_w(sd, R51x_SYS_SNAP, 0x01);
  break;
 case 128:
  reg_w(sd, R51x_SYS_RESET, 0x40);
  reg_w(sd, R51x_SYS_RESET, 0x00);
  break;
 }
}
