
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
 int CPIA_COMMAND_GotoHiPower ;
 int D_CONF ;
 int D_ERR ;
 int EINTR ;
 int EIO ;
 scalar_t__ HI_POWER_STATE ;
 int PDEBUG (int ,char*,...) ;
 int current ;
 int do_command (struct gspca_dev*,int ,int ,int ,int ,int ) ;
 int msleep_interruptible (int) ;
 int printstatus (TYPE_2__*) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int goto_high_power(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int ret;

 ret = do_command(gspca_dev, CPIA_COMMAND_GotoHiPower, 0, 0, 0, 0);
 if (ret)
  return ret;

 msleep_interruptible(40);

 if (signal_pending(current))
  return -EINTR;

 do_command(gspca_dev, CPIA_COMMAND_GetCameraStatus, 0, 0, 0, 0);
 if (ret)
  return ret;

 if (sd->params.status.systemState != HI_POWER_STATE) {
  PDEBUG(D_ERR, "unexpected state after hi power cmd: %02x",
          sd->params.status.systemState);
  printstatus(&sd->params);
  return -EIO;
 }

 PDEBUG(D_CONF, "camera now in HIGH power state");
 return 0;
}
