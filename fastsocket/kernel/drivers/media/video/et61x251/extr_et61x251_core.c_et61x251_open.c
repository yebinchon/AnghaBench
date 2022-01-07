
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_flags; struct et61x251_device* private_data; } ;
struct et61x251_device {int state; int kref; int open_mutex; TYPE_1__* v4ldev; scalar_t__ frame_count; scalar_t__ nbuffers; int stream; int io; scalar_t__ users; int wait_open; int probe; } ;
struct TYPE_2__ {int num; } ;


 int DBG (int,char*,...) ;
 int DEV_DISCONNECTED ;
 int DEV_MISCONFIGURED ;
 int ENODEV ;
 int ERESTARTSYS ;
 int EWOULDBLOCK ;
 int IO_NONE ;
 int O_NDELAY ;
 int O_NONBLOCK ;
 int STREAM_OFF ;
 int down_read (int *) ;
 int down_read_trylock (int *) ;
 int et61x251_dev_lock ;
 int et61x251_empty_framequeues (struct et61x251_device*) ;
 int et61x251_init (struct et61x251_device*) ;
 int et61x251_release_resources ;
 int et61x251_start_transfer (struct et61x251_device*) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int up_read (int *) ;
 struct et61x251_device* video_drvdata (struct file*) ;
 int wait_event_interruptible_exclusive (int ,int) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int et61x251_open(struct file *filp)
{
 struct et61x251_device* cam;
 int err = 0;

 if (!down_read_trylock(&et61x251_dev_lock))
  return -ERESTARTSYS;

 cam = video_drvdata(filp);

 if (wait_for_completion_interruptible(&cam->probe)) {
  up_read(&et61x251_dev_lock);
  return -ERESTARTSYS;
 }

 kref_get(&cam->kref);

 if (mutex_lock_interruptible(&cam->open_mutex)) {
  kref_put(&cam->kref, et61x251_release_resources);
  up_read(&et61x251_dev_lock);
  return -ERESTARTSYS;
 }

 if (cam->state & DEV_DISCONNECTED) {
  DBG(1, "Device not present");
  err = -ENODEV;
  goto out;
 }

 if (cam->users) {
  DBG(2, "Device /dev/video%d is already in use",
         cam->v4ldev->num);
  DBG(3, "Simultaneous opens are not supported");
  if ((filp->f_flags & O_NONBLOCK) ||
      (filp->f_flags & O_NDELAY)) {
   err = -EWOULDBLOCK;
   goto out;
  }
  DBG(2, "A blocking open() has been requested. Wait for the "
         "device to be released...");
  up_read(&et61x251_dev_lock);
  err = wait_event_interruptible_exclusive(cam->wait_open,
      (cam->state & DEV_DISCONNECTED)
        || !cam->users);
  down_read(&et61x251_dev_lock);
  if (err)
   goto out;
  if (cam->state & DEV_DISCONNECTED) {
   err = -ENODEV;
   goto out;
  }
 }

 if (cam->state & DEV_MISCONFIGURED) {
  err = et61x251_init(cam);
  if (err) {
   DBG(1, "Initialization failed again. "
          "I will retry on next open().");
   goto out;
  }
  cam->state &= ~DEV_MISCONFIGURED;
 }

 if ((err = et61x251_start_transfer(cam)))
  goto out;

 filp->private_data = cam;
 cam->users++;
 cam->io = IO_NONE;
 cam->stream = STREAM_OFF;
 cam->nbuffers = 0;
 cam->frame_count = 0;
 et61x251_empty_framequeues(cam);

 DBG(3, "Video device /dev/video%d is open", cam->v4ldev->num);

out:
 mutex_unlock(&cam->open_mutex);
 if (err)
  kref_put(&cam->kref, et61x251_release_resources);
 up_read(&et61x251_dev_lock);
 return err;
}
