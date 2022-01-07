
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct hdpvr_device {int io_mutex; int open_count; int v4l2_dev; } ;
struct file {struct hdpvr_fh* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct hdpvr_fh* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int v4l2_err (int *,char*) ;
 int video_devdata (struct file*) ;
 scalar_t__ video_get_drvdata (int ) ;

__attribute__((used)) static int hdpvr_open(struct file *file)
{
 struct hdpvr_device *dev;
 struct hdpvr_fh *fh;
 int retval = -ENOMEM;

 dev = (struct hdpvr_device *)video_get_drvdata(video_devdata(file));
 if (!dev) {
  pr_err("open failing with with ENODEV\n");
  retval = -ENODEV;
  goto err;
 }

 fh = kzalloc(sizeof(struct hdpvr_fh), GFP_KERNEL);
 if (!fh) {
  v4l2_err(&dev->v4l2_dev, "Out of memory\n");
  goto err;
 }


 mutex_lock(&dev->io_mutex);
 dev->open_count++;
 mutex_unlock(&dev->io_mutex);

 fh->dev = dev;


 file->private_data = fh;

 retval = 0;
err:
 return retval;
}
