
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct dvb_device* private_data; } ;
struct dvb_device {scalar_t__ state; int users; int timer; int type; int buffer; int mutex; struct dmxdev* priv; } ;
struct dmxdev_filter {scalar_t__ state; int users; int timer; int type; int buffer; int mutex; struct dmxdev* priv; } ;
struct dmxdev {int filternum; int mutex; struct dvb_device* filter; } ;


 int DMXDEV_STATE_ALLOCATED ;
 scalar_t__ DMXDEV_STATE_FREE ;
 int DMXDEV_TYPE_NONE ;
 int EINVAL ;
 int EMFILE ;
 int ERESTARTSYS ;
 int dvb_dmxdev_filter_state_set (struct dvb_device*,int ) ;
 int dvb_ringbuffer_init (int *,int *,int) ;
 int init_timer (int *) ;
 int mutex_init (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dvb_demux_open(struct inode *inode, struct file *file)
{
 struct dvb_device *dvbdev = file->private_data;
 struct dmxdev *dmxdev = dvbdev->priv;
 int i;
 struct dmxdev_filter *dmxdevfilter;

 if (!dmxdev->filter)
  return -EINVAL;

 if (mutex_lock_interruptible(&dmxdev->mutex))
  return -ERESTARTSYS;

 for (i = 0; i < dmxdev->filternum; i++)
  if (dmxdev->filter[i].state == DMXDEV_STATE_FREE)
   break;

 if (i == dmxdev->filternum) {
  mutex_unlock(&dmxdev->mutex);
  return -EMFILE;
 }

 dmxdevfilter = &dmxdev->filter[i];
 mutex_init(&dmxdevfilter->mutex);
 file->private_data = dmxdevfilter;

 dvb_ringbuffer_init(&dmxdevfilter->buffer, ((void*)0), 8192);
 dmxdevfilter->type = DMXDEV_TYPE_NONE;
 dvb_dmxdev_filter_state_set(dmxdevfilter, DMXDEV_STATE_ALLOCATED);
 init_timer(&dmxdevfilter->timer);

 dvbdev->users++;

 mutex_unlock(&dmxdev->mutex);
 return 0;
}
