
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct hdpvr_device {scalar_t__ status; int io_mutex; int open_count; } ;
struct file {struct hdpvr_fh* private_data; } ;


 int ENODEV ;
 scalar_t__ STATUS_STREAMING ;
 int hdpvr_stop_streaming (struct hdpvr_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hdpvr_release(struct file *file)
{
 struct hdpvr_fh *fh = file->private_data;
 struct hdpvr_device *dev = fh->dev;

 if (!dev)
  return -ENODEV;

 mutex_lock(&dev->io_mutex);
 if (!(--dev->open_count) && dev->status == STATUS_STREAMING)
  hdpvr_stop_streaming(dev);

 mutex_unlock(&dev->io_mutex);

 return 0;
}
