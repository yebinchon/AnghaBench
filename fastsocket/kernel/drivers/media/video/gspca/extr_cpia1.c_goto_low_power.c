
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ systemState; } ;
struct TYPE_4__ {TYPE_1__ status; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_GetCameraStatus ;
 int CPIA_COMMAND_GotoLoPower ;
 int D_CONF ;
 int D_ERR ;
 int EIO ;
 scalar_t__ LO_POWER_STATE ;
 int PDEBUG (int ,char*,...) ;
 scalar_t__ WARM_BOOT_STATE ;
 int do_command (struct gspca_dev*,int ,int ,int ,int ,int ) ;
 int printstatus (TYPE_2__*) ;

__attribute__((used)) static int goto_low_power(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int ret;

 ret = do_command(gspca_dev, CPIA_COMMAND_GotoLoPower, 0, 0, 0, 0);
 if (ret)
  return ret;

 ret = do_command(gspca_dev, CPIA_COMMAND_GetCameraStatus, 0, 0, 0, 0);
 if (ret)
  return ret;

 if (sd->params.status.systemState != LO_POWER_STATE) {
  if (sd->params.status.systemState != WARM_BOOT_STATE) {
   PDEBUG(D_ERR,
          "unexpected state after lo power cmd: %02x",
          sd->params.status.systemState);
   printstatus(&sd->params);
  }
  return -EIO;
 }

 PDEBUG(D_CONF, "camera now in LOW power state");
 return 0;
}
