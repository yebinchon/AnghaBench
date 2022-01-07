
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int balanceMode; int blueGain; int greenGain; int redGain; } ;
struct TYPE_4__ {TYPE_1__ colourBalance; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_SetColourBalance ;
 int EINVAL ;
 int do_command (struct gspca_dev*,int ,int,int ,int ,int ) ;

__attribute__((used)) static int command_setcolourbalance(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->params.colourBalance.balanceMode == 1) {
  int ret;

  ret = do_command(gspca_dev, CPIA_COMMAND_SetColourBalance,
     1,
     sd->params.colourBalance.redGain,
     sd->params.colourBalance.greenGain,
     sd->params.colourBalance.blueGain);
  if (ret)
   return ret;

  return do_command(gspca_dev, CPIA_COMMAND_SetColourBalance,
      3, 0, 0, 0);
 }
 if (sd->params.colourBalance.balanceMode == 2) {
  return do_command(gspca_dev, CPIA_COMMAND_SetColourBalance,
      2, 0, 0, 0);
 }
 if (sd->params.colourBalance.balanceMode == 3) {
  return do_command(gspca_dev, CPIA_COMMAND_SetColourBalance,
      3, 0, 0, 0);
 }

 return -EINVAL;
}
