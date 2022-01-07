
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int divisor; scalar_t__ baserate; } ;
struct TYPE_4__ {TYPE_1__ sensorFps; } ;
struct cam_data {int cmd_queue; TYPE_2__ params; } ;


 int COMMAND_SETAPCOR ;
 int COMMAND_SETCOLOURBALANCE ;
 int COMMAND_SETCOLOURPARAMS ;
 int COMMAND_SETCOMPRESSION ;
 int COMMAND_SETCOMPRESSIONPARAMS ;
 int COMMAND_SETCOMPRESSIONTARGET ;
 int COMMAND_SETECPTIMING ;
 int COMMAND_SETEXPOSURE ;
 int COMMAND_SETFLICKERCTRL ;
 int COMMAND_SETFORMAT ;
 int COMMAND_SETSENSORFPS ;
 int COMMAND_SETVLOFFSET ;
 int COMMAND_SETYUVTHRESH ;
 int CPIA_COMMAND_SetGrabMode ;
 int CPIA_GRAB_SINGLE ;
 int EINTR ;
 int current ;
 int dispatch_commands (struct cam_data*) ;
 int do_command (struct cam_data*,int ,int ,int ,int ,int ) ;
 int msleep_interruptible (int) ;
 int save_camera_state (struct cam_data*) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int set_camera_state(struct cam_data *cam)
{
 cam->cmd_queue = COMMAND_SETCOMPRESSION |
    COMMAND_SETCOMPRESSIONTARGET |
    COMMAND_SETCOLOURPARAMS |
    COMMAND_SETFORMAT |
    COMMAND_SETYUVTHRESH |
    COMMAND_SETECPTIMING |
    COMMAND_SETCOMPRESSIONPARAMS |
    COMMAND_SETEXPOSURE |
    COMMAND_SETCOLOURBALANCE |
    COMMAND_SETSENSORFPS |
    COMMAND_SETAPCOR |
    COMMAND_SETFLICKERCTRL |
    COMMAND_SETVLOFFSET;

 do_command(cam, CPIA_COMMAND_SetGrabMode, CPIA_GRAB_SINGLE,0,0,0);
 dispatch_commands(cam);



 msleep_interruptible(6*(cam->params.sensorFps.baserate ? 33 : 40) *
          (1 << cam->params.sensorFps.divisor) + 10);

 if(signal_pending(current))
  return -EINTR;

 save_camera_state(cam);

 return 0;
}
