
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int blueGain; int greenGain; int redGain; } ;
struct TYPE_4__ {int blueComp; int green2Comp; int green1Comp; int redComp; int coarseExpHi; int coarseExpLo; int fineExp; int gain; } ;
struct TYPE_6__ {TYPE_2__ colourBalance; TYPE_1__ exposure; } ;
struct cam_data {int cmd_queue; TYPE_3__ params; } ;


 int COMMAND_SETCOLOURBALANCE ;
 int COMMAND_SETEXPOSURE ;
 int CPIA_COMMAND_GetColourBalance ;
 int CPIA_COMMAND_GetExposure ;
 int DBG (char*,int ,int ,int ,...) ;
 int do_command (struct cam_data*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void save_camera_state(struct cam_data *cam)
{
 if(!(cam->cmd_queue & COMMAND_SETCOLOURBALANCE))
  do_command(cam, CPIA_COMMAND_GetColourBalance, 0, 0, 0, 0);
 if(!(cam->cmd_queue & COMMAND_SETEXPOSURE))
  do_command(cam, CPIA_COMMAND_GetExposure, 0, 0, 0, 0);

 DBG("%d/%d/%d/%d/%d/%d/%d/%d\n",
      cam->params.exposure.gain,
      cam->params.exposure.fineExp,
      cam->params.exposure.coarseExpLo,
      cam->params.exposure.coarseExpHi,
      cam->params.exposure.redComp,
      cam->params.exposure.green1Comp,
      cam->params.exposure.green2Comp,
      cam->params.exposure.blueComp);
 DBG("%d/%d/%d\n",
      cam->params.colourBalance.redGain,
      cam->params.colourBalance.greenGain,
      cam->params.colourBalance.blueGain);
}
