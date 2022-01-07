
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct hdpvr_device {scalar_t__ status; int wait_data; int io_mutex; int v4l2_dev; int video_dev; } ;
struct hdpvr_buffer {scalar_t__ status; } ;
struct file {struct hdpvr_fh* private_data; } ;
typedef int poll_table ;


 scalar_t__ BUFSTAT_READY ;
 unsigned int EIO ;
 int MSG_BUFFER ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 scalar_t__ STATUS_IDLE ;
 int hdpvr_debug ;
 struct hdpvr_buffer* hdpvr_get_next_buffer (struct hdpvr_device*) ;
 scalar_t__ hdpvr_start_streaming (struct hdpvr_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int print_buffer_status () ;
 int v4l2_dbg (int ,int ,int *,char*) ;
 int video_is_registered (int ) ;

__attribute__((used)) static unsigned int hdpvr_poll(struct file *filp, poll_table *wait)
{
 struct hdpvr_buffer *buf = ((void*)0);
 struct hdpvr_fh *fh = filp->private_data;
 struct hdpvr_device *dev = fh->dev;
 unsigned int mask = 0;

 mutex_lock(&dev->io_mutex);

 if (!video_is_registered(dev->video_dev)) {
  mutex_unlock(&dev->io_mutex);
  return -EIO;
 }

 if (dev->status == STATUS_IDLE) {
  if (hdpvr_start_streaming(dev)) {
   v4l2_dbg(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
     "start_streaming failed\n");
   dev->status = STATUS_IDLE;
  }

  print_buffer_status();
 }
 mutex_unlock(&dev->io_mutex);

 buf = hdpvr_get_next_buffer(dev);

 if (!buf || buf->status != BUFSTAT_READY) {
  poll_wait(filp, &dev->wait_data, wait);
  buf = hdpvr_get_next_buffer(dev);
 }
 if (buf && buf->status == BUFSTAT_READY)
  mask |= POLLIN | POLLRDNORM;

 return mask;
}
