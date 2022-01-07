
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
struct cam_data {scalar_t__ open_count; int first_frame; TYPE_3__* ops; int busy_lock; int * raw_image; TYPE_2__ decompressed_frame; scalar_t__ mmap_kludge; TYPE_1__* proc_entry; int lowlevel_data; } ;
struct TYPE_6__ {int (* close ) (int ) ;scalar_t__ (* open ) (int ) ;int owner; } ;
struct TYPE_4__ {int uid; } ;


 int CPIA_MAX_FRAME_SIZE ;
 int CPIA_MAX_IMAGE_SIZE ;
 int DBG (char*) ;
 int EBUSY ;
 int EINTR ;
 int ENODEV ;
 int ENOMEM ;
 int current ;
 int current_uid () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_cam (TYPE_3__*) ;
 int reset_camera (struct cam_data*) ;
 int rvfree (int *,int ) ;
 void* rvmalloc (int ) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ stub1 (int ) ;
 int stub2 (int ) ;
 int try_module_get (int ) ;
 struct video_device* video_devdata (struct file*) ;
 struct cam_data* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int cpia_open(struct file *file)
{
 struct video_device *dev = video_devdata(file);
 struct cam_data *cam = video_get_drvdata(dev);
 int err;

 if (!cam) {
  DBG("Internal error, cam_data not found!\n");
  return -ENODEV;
 }

 if (cam->open_count > 0) {
  DBG("Camera already open\n");
  return -EBUSY;
 }

 if (!try_module_get(cam->ops->owner))
  return -ENODEV;

 mutex_lock(&cam->busy_lock);
 err = -ENOMEM;
 if (!cam->raw_image) {
  cam->raw_image = rvmalloc(CPIA_MAX_IMAGE_SIZE);
  if (!cam->raw_image)
   goto oops;
 }

 if (!cam->decompressed_frame.data) {
  cam->decompressed_frame.data = rvmalloc(CPIA_MAX_FRAME_SIZE);
  if (!cam->decompressed_frame.data)
   goto oops;
 }


 err = -ENODEV;
 if (cam->ops->open(cam->lowlevel_data))
  goto oops;


 if ((err = reset_camera(cam)) != 0) {
  cam->ops->close(cam->lowlevel_data);
  goto oops;
 }

 err = -EINTR;
 if(signal_pending(current))
  goto oops;


 if(cam->proc_entry)
  cam->proc_entry->uid = current_uid();


 cam->first_frame = 1;


 cam->mmap_kludge = 0;

 ++cam->open_count;
 file->private_data = dev;
 mutex_unlock(&cam->busy_lock);
 return 0;

 oops:
 if (cam->decompressed_frame.data) {
  rvfree(cam->decompressed_frame.data, CPIA_MAX_FRAME_SIZE);
  cam->decompressed_frame.data = ((void*)0);
 }
 if (cam->raw_image) {
  rvfree(cam->raw_image, CPIA_MAX_IMAGE_SIZE);
  cam->raw_image = ((void*)0);
 }
 mutex_unlock(&cam->busy_lock);
 put_cam(cam->ops);
 return err;
}
