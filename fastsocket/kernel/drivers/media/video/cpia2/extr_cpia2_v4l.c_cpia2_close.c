
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct file {struct cpia2_fh* private_data; } ;
struct cpia2_fh {int open_count; scalar_t__ prio; int busy_lock; scalar_t__ present; scalar_t__ mmapped; } ;
struct camera_data {int open_count; scalar_t__ prio; int busy_lock; scalar_t__ present; scalar_t__ mmapped; } ;


 scalar_t__ V4L2_PRIORITY_RECORD ;
 int cpia2_free_buffers (struct cpia2_fh*) ;
 int cpia2_save_camera_state (struct cpia2_fh*) ;
 int cpia2_set_low_power (struct cpia2_fh*) ;
 int cpia2_usb_stream_stop (struct cpia2_fh*) ;
 int kfree (struct cpia2_fh*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_prio_close (scalar_t__*,scalar_t__*) ;
 struct video_device* video_devdata (struct file*) ;
 struct cpia2_fh* video_get_drvdata (struct video_device*) ;
 int video_unregister_device (struct video_device*) ;

__attribute__((used)) static int cpia2_close(struct file *file)
{
 struct video_device *dev = video_devdata(file);
 struct camera_data *cam = video_get_drvdata(dev);
 struct cpia2_fh *fh = file->private_data;

 mutex_lock(&cam->busy_lock);

 if (cam->present &&
     (cam->open_count == 1
      || fh->prio == V4L2_PRIORITY_RECORD
     )) {
  cpia2_usb_stream_stop(cam);

  if(cam->open_count == 1) {

   cpia2_save_camera_state(cam);

   cpia2_set_low_power(cam);
   cpia2_free_buffers(cam);
  }
 }

 {
  if(fh->mmapped)
   cam->mmapped = 0;
  v4l2_prio_close(&cam->prio,&fh->prio);
  file->private_data = ((void*)0);
  kfree(fh);
 }

 if (--cam->open_count == 0) {
  cpia2_free_buffers(cam);
  if (!cam->present) {
   video_unregister_device(dev);
   mutex_unlock(&cam->busy_lock);
   kfree(cam);
   return 0;
  }
 }

 mutex_unlock(&cam->busy_lock);

 return 0;
}
