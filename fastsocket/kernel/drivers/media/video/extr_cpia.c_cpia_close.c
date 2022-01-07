
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct file {struct video_device* private_data; } ;
struct TYPE_5__ {int * data; } ;
struct cam_data {scalar_t__ open_count; TYPE_3__* ops; scalar_t__ frame_buf; TYPE_2__ decompressed_frame; int * raw_image; int lowlevel_data; int frame; TYPE_1__* proc_entry; } ;
struct TYPE_6__ {int (* close ) (int ) ;} ;
struct TYPE_4__ {scalar_t__ uid; } ;


 int CPIA_COMMAND_GetCameraStatus ;
 int CPIA_MAX_FRAME_SIZE ;
 int CPIA_MAX_IMAGE_SIZE ;
 int do_command (struct cam_data*,int ,int ,int ,int ,int ) ;
 int free_frame_buf (struct cam_data*) ;
 int free_frames (int ) ;
 int goto_low_power (struct cam_data*) ;
 int kfree (struct cam_data*) ;
 int put_cam (TYPE_3__*) ;
 int rvfree (int *,int ) ;
 int save_camera_state (struct cam_data*) ;
 int stub1 (int ) ;
 struct cam_data* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int cpia_close(struct file *file)
{
 struct video_device *dev = file->private_data;
 struct cam_data *cam = video_get_drvdata(dev);

 if (cam->ops) {

  if(cam->proc_entry)
   cam->proc_entry->uid = 0;


  save_camera_state(cam);


  goto_low_power(cam);


  do_command(cam, CPIA_COMMAND_GetCameraStatus, 0, 0, 0, 0);


  free_frames(cam->frame);


  cam->ops->close(cam->lowlevel_data);

  put_cam(cam->ops);
 }

 if (--cam->open_count == 0) {

  if (cam->raw_image) {
   rvfree(cam->raw_image, CPIA_MAX_IMAGE_SIZE);
   cam->raw_image = ((void*)0);
  }

  if (cam->decompressed_frame.data) {
   rvfree(cam->decompressed_frame.data, CPIA_MAX_FRAME_SIZE);
   cam->decompressed_frame.data = ((void*)0);
  }

  if (cam->frame_buf)
   free_frame_buf(cam);

  if (!cam->ops)
   kfree(cam);
 }
 file->private_data = ((void*)0);

 return 0;
}
