
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ mode; int decimation; } ;
struct TYPE_10__ {int expMode; } ;
struct TYPE_8__ {scalar_t__ streamState; } ;
struct TYPE_14__ {TYPE_6__ compression; TYPE_3__ exposure; TYPE_1__ status; int streamStartLine; } ;
struct TYPE_12__ {void* state; int count; int data; } ;
struct cam_data {int first_frame; unsigned long transfer_rate; int image_size; size_t curframe; TYPE_7__ params; TYPE_5__ decompressed_frame; TYPE_4__* frame; int raw_image; int lowlevel_data; TYPE_2__* ops; } ;
struct TYPE_11__ {scalar_t__ state; int data; } ;
struct TYPE_9__ {int (* streamRead ) (int ,int ,int ) ;scalar_t__ wait_for_stream_ready; } ;


 int CPIA_COMMAND_DiscardFrame ;
 int CPIA_COMMAND_GetCameraStatus ;
 int CPIA_COMMAND_GetColourBalance ;
 int CPIA_COMMAND_GetExposure ;
 int CPIA_COMMAND_GrabFrame ;
 int CPIA_COMMAND_ReadMCPorts ;
 int CPIA_COMMAND_SetCompression ;
 int CPIA_COMMAND_SetGrabMode ;
 scalar_t__ CPIA_COMPRESSION_NONE ;
 scalar_t__ CPIA_GRAB_CONTINUOUS ;
 scalar_t__ CPIA_GRAB_SINGLE ;
 int DBG (char*,int) ;
 int EINTR ;
 int EIO ;
 void* FRAME_DONE ;
 scalar_t__ FRAME_READY ;
 int HZ ;
 int NO_DECIMATION ;
 int READY_TIMEOUT ;
 scalar_t__ STREAM_PAUSED ;
 scalar_t__ STREAM_READY ;
 int clear_stall (struct cam_data*) ;
 int cond_resched () ;
 int current ;
 int dispatch_commands (struct cam_data*) ;
 scalar_t__ do_command (struct cam_data*,int ,scalar_t__,int ,int ,int ) ;
 unsigned long jiffies ;
 int memcpy (int ,int ,int ) ;
 int monitor_exposure (struct cam_data*) ;
 int msleep_interruptible (int) ;
 int parse_picture (struct cam_data*,int) ;
 int restart_flicker (struct cam_data*) ;
 scalar_t__ signal_pending (int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int fetch_frame(void *data)
{
 int image_size, retry;
 struct cam_data *cam = (struct cam_data *)data;
 unsigned long oldjif, rate, diff;



 for (retry = 0; retry < 3; ++retry) {
  if (retry)
   DBG("retry=%d\n", retry);

  if (!cam->ops)
   continue;


  if (cam->first_frame &&
      cam->params.compression.mode != CPIA_COMPRESSION_NONE) {
   do_command(cam, CPIA_COMMAND_SetCompression,
       CPIA_COMPRESSION_NONE,
       NO_DECIMATION, 0, 0);


   do_command(cam, CPIA_COMMAND_DiscardFrame, 0, 0, 0, 0);
  }


  if (do_command(cam, CPIA_COMMAND_GrabFrame, 0,
          cam->params.streamStartLine, 0, 0))
   continue;

  if (cam->ops->wait_for_stream_ready) {

   int count = 0;
   do_command(cam, CPIA_COMMAND_GetCameraStatus,0,0,0,0);
   while (cam->params.status.streamState != STREAM_READY) {
    if(++count > READY_TIMEOUT)
     break;
    if(cam->params.status.streamState ==
       STREAM_PAUSED) {

     if(!clear_stall(cam))
      return -EIO;
    }

    cond_resched();


    msleep_interruptible(10);
    if (signal_pending(current))
     return -EINTR;

    do_command(cam, CPIA_COMMAND_GetCameraStatus,
        0, 0, 0, 0);
   }
   if(cam->params.status.streamState != STREAM_READY) {
    continue;
   }
  }

  cond_resched();


  oldjif = jiffies;
  image_size = cam->ops->streamRead(cam->lowlevel_data,
        cam->raw_image, 0);
  if (image_size <= 0) {
   DBG("streamRead failed: %d\n", image_size);
   continue;
  }

  rate = image_size * HZ / 1024;
  diff = jiffies-oldjif;
  cam->transfer_rate = diff==0 ? rate : rate/diff;



  restart_flicker(cam);



  if(cam->params.exposure.expMode == 2)
   monitor_exposure(cam);


  dispatch_commands(cam);


  do_command(cam, CPIA_COMMAND_GetColourBalance, 0, 0, 0, 0);
  do_command(cam, CPIA_COMMAND_GetExposure, 0, 0, 0, 0);
  do_command(cam, CPIA_COMMAND_ReadMCPorts, 0, 0, 0, 0);





  cond_resched();

  cam->image_size = parse_picture(cam, image_size);
  if (cam->image_size <= 0) {
   DBG("parse_picture failed %d\n", cam->image_size);
   if(cam->params.compression.mode !=
      CPIA_COMPRESSION_NONE) {



    cam->first_frame = 1;
    do_command(cam, CPIA_COMMAND_SetGrabMode,
        CPIA_GRAB_SINGLE, 0, 0, 0);


    msleep_interruptible(70);
    if (signal_pending(current))
     return -EINTR;
   }
  } else
   break;
 }

 if (retry < 3) {

  if (cam->frame[cam->curframe].state == FRAME_READY) {
   memcpy(cam->frame[cam->curframe].data,
          cam->decompressed_frame.data,
          cam->decompressed_frame.count);
   cam->frame[cam->curframe].state = FRAME_DONE;
  } else
   cam->decompressed_frame.state = FRAME_DONE;

  if (cam->first_frame) {
   cam->first_frame = 0;
   do_command(cam, CPIA_COMMAND_SetCompression,
       cam->params.compression.mode,
       cam->params.compression.decimation, 0, 0);


   do_command(cam, CPIA_COMMAND_SetGrabMode,
       CPIA_GRAB_CONTINUOUS, 0, 0, 0);
  }
  return 0;
 }
 return -EIO;
}
