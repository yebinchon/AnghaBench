
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct cpia2_fh* private_data; } ;
struct cpia2_fh {scalar_t__ mmapped; int prio; } ;
struct camera_data {scalar_t__ open_count; int busy_lock; int prio; scalar_t__ COM_len; scalar_t__ APP_len; int present; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int ERR (char*) ;
 int GFP_KERNEL ;
 int V4L2_PRIORITY_UNSET ;
 scalar_t__ cpia2_allocate_buffers (struct camera_data*) ;
 int cpia2_dbg_dump_registers (struct camera_data*) ;
 scalar_t__ cpia2_reset_camera (struct camera_data*) ;
 struct cpia2_fh* kmalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_prio_open (int *,int *) ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static int cpia2_open(struct file *file)
{
 struct camera_data *cam = video_drvdata(file);
 int retval = 0;

 if (!cam) {
  ERR("Internal error, camera_data not found!\n");
  return -ENODEV;
 }

 if(mutex_lock_interruptible(&cam->busy_lock))
  return -ERESTARTSYS;

 if(!cam->present) {
  retval = -ENODEV;
  goto err_return;
 }

 if (cam->open_count > 0) {
  goto skip_init;
 }

 if (cpia2_allocate_buffers(cam)) {
  retval = -ENOMEM;
  goto err_return;
 }


 if (cpia2_reset_camera(cam) < 0) {
  retval = -EIO;
  goto err_return;
 }

 cam->APP_len = 0;
 cam->COM_len = 0;

skip_init:
 {
  struct cpia2_fh *fh = kmalloc(sizeof(*fh),GFP_KERNEL);
  if(!fh) {
   retval = -ENOMEM;
   goto err_return;
  }
  file->private_data = fh;
  fh->prio = V4L2_PRIORITY_UNSET;
  v4l2_prio_open(&cam->prio, &fh->prio);
  fh->mmapped = 0;
 }

 ++cam->open_count;

 cpia2_dbg_dump_registers(cam);

err_return:
 mutex_unlock(&cam->busy_lock);
 return retval;
}
