
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int * f_op; struct dmxdev_filter* private_data; } ;
struct dmxdev_filter {struct dmxdev* dev; } ;
struct dmxdev {int exit; int mutex; TYPE_1__* dvbdev; } ;
struct TYPE_2__ {int users; int wait_queue; } ;


 int dvb_dmxdev_filter_free (struct dmxdev*,struct dmxdev_filter*) ;
 int fops_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int dvb_demux_release(struct inode *inode, struct file *file)
{
 struct dmxdev_filter *dmxdevfilter = file->private_data;
 struct dmxdev *dmxdev = dmxdevfilter->dev;

 int ret;

 ret = dvb_dmxdev_filter_free(dmxdev, dmxdevfilter);

 mutex_lock(&dmxdev->mutex);
 dmxdev->dvbdev->users--;
 if(dmxdev->dvbdev->users==1 && dmxdev->exit==1) {
  fops_put(file->f_op);
  file->f_op = ((void*)0);
  mutex_unlock(&dmxdev->mutex);
  wake_up(&dmxdev->dvbdev->wait_queue);
 } else
  mutex_unlock(&dmxdev->mutex);

 return ret;
}
