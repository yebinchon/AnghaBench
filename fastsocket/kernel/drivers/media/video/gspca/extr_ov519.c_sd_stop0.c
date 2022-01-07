
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int present; } ;
struct sd {scalar_t__ bridge; scalar_t__ snapshot_pressed; TYPE_1__ gspca_dev; } ;
struct gspca_dev {int input_dev; } ;


 scalar_t__ BRIDGE_OV519 ;
 scalar_t__ BRIDGE_W9968CF ;
 int KEY_CAMERA ;
 int OV519_R57_SNAPSHOT ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 int reg_w (struct sd*,int ,int) ;
 int w9968cf_stop0 (struct sd*) ;

__attribute__((used)) static void sd_stop0(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (!sd->gspca_dev.present)
  return;
 if (sd->bridge == BRIDGE_W9968CF)
  w9968cf_stop0(sd);
 if (sd->bridge == BRIDGE_OV519)
  reg_w(sd, OV519_R57_SNAPSHOT, 0x23);
}
