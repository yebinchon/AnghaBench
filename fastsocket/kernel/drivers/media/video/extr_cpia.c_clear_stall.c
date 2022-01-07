
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ streamState; } ;
struct TYPE_6__ {TYPE_2__ status; } ;
struct cam_data {TYPE_3__ params; int raw_image; int lowlevel_data; TYPE_1__* ops; } ;
struct TYPE_4__ {int (* streamRead ) (int ,int ,int ) ;} ;


 int CPIA_COMMAND_GetCameraStatus ;
 int LOG (char*) ;
 scalar_t__ STREAM_PAUSED ;
 int do_command (struct cam_data*,int ,int ,int ,int ,int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int clear_stall(struct cam_data *cam)
{

 LOG("Clearing stall\n");

 cam->ops->streamRead(cam->lowlevel_data, cam->raw_image, 0);
 do_command(cam, CPIA_COMMAND_GetCameraStatus,0,0,0,0);
 return cam->params.status.streamState != STREAM_PAUSED;
}
