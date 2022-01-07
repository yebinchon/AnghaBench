
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct inode {int dummy; } ;
struct file {struct dmxdev_filter* private_data; } ;
struct dmxdev_filter {int mutex; int state; struct dmxdev* dev; } ;
struct dmxdev {int mutex; TYPE_1__* demux; } ;
struct dmx_stc {int base; int stc; int num; } ;
struct TYPE_5__ {int (* get_caps ) (TYPE_1__*,void*) ;int (* set_source ) (TYPE_1__*,void*) ;int (* get_stc ) (TYPE_1__*,int ,int *,int *) ;int (* get_pes_pids ) (TYPE_1__*,void*) ;} ;


 int DMXDEV_STATE_SET ;
 int EINVAL ;
 int ERESTARTSYS ;
 int dvb_dmxdev_add_pid (struct dmxdev*,struct dmxdev_filter*,int ) ;
 int dvb_dmxdev_filter_set (struct dmxdev*,struct dmxdev_filter*,void*) ;
 int dvb_dmxdev_filter_start (struct dmxdev_filter*) ;
 int dvb_dmxdev_filter_stop (struct dmxdev_filter*) ;
 int dvb_dmxdev_pes_filter_set (struct dmxdev*,struct dmxdev_filter*,void*) ;
 int dvb_dmxdev_remove_pid (struct dmxdev*,struct dmxdev_filter*,int ) ;
 int dvb_dmxdev_set_buffer_size (struct dmxdev_filter*,unsigned long) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_1__*,void*) ;
 int stub2 (TYPE_1__*,void*) ;
 int stub3 (TYPE_1__*,void*) ;
 int stub4 (TYPE_1__*,int ,int *,int *) ;

__attribute__((used)) static int dvb_demux_do_ioctl(struct inode *inode, struct file *file,
         unsigned int cmd, void *parg)
{
 struct dmxdev_filter *dmxdevfilter = file->private_data;
 struct dmxdev *dmxdev = dmxdevfilter->dev;
 unsigned long arg = (unsigned long)parg;
 int ret = 0;

 if (mutex_lock_interruptible(&dmxdev->mutex))
  return -ERESTARTSYS;

 switch (cmd) {
 case 129:
  if (mutex_lock_interruptible(&dmxdevfilter->mutex)) {
   mutex_unlock(&dmxdev->mutex);
   return -ERESTARTSYS;
  }
  if (dmxdevfilter->state < DMXDEV_STATE_SET)
   ret = -EINVAL;
  else
   ret = dvb_dmxdev_filter_start(dmxdevfilter);
  mutex_unlock(&dmxdevfilter->mutex);
  break;

 case 128:
  if (mutex_lock_interruptible(&dmxdevfilter->mutex)) {
   mutex_unlock(&dmxdev->mutex);
   return -ERESTARTSYS;
  }
  ret = dvb_dmxdev_filter_stop(dmxdevfilter);
  mutex_unlock(&dmxdevfilter->mutex);
  break;

 case 132:
  if (mutex_lock_interruptible(&dmxdevfilter->mutex)) {
   mutex_unlock(&dmxdev->mutex);
   return -ERESTARTSYS;
  }
  ret = dvb_dmxdev_filter_set(dmxdev, dmxdevfilter, parg);
  mutex_unlock(&dmxdevfilter->mutex);
  break;

 case 131:
  if (mutex_lock_interruptible(&dmxdevfilter->mutex)) {
   mutex_unlock(&dmxdev->mutex);
   return -ERESTARTSYS;
  }
  ret = dvb_dmxdev_pes_filter_set(dmxdev, dmxdevfilter, parg);
  mutex_unlock(&dmxdevfilter->mutex);
  break;

 case 133:
  if (mutex_lock_interruptible(&dmxdevfilter->mutex)) {
   mutex_unlock(&dmxdev->mutex);
   return -ERESTARTSYS;
  }
  ret = dvb_dmxdev_set_buffer_size(dmxdevfilter, arg);
  mutex_unlock(&dmxdevfilter->mutex);
  break;

 case 136:
  if (!dmxdev->demux->get_pes_pids) {
   ret = -EINVAL;
   break;
  }
  dmxdev->demux->get_pes_pids(dmxdev->demux, parg);
  break;

 case 137:
  if (!dmxdev->demux->get_caps) {
   ret = -EINVAL;
   break;
  }
  ret = dmxdev->demux->get_caps(dmxdev->demux, parg);
  break;

 case 130:
  if (!dmxdev->demux->set_source) {
   ret = -EINVAL;
   break;
  }
  ret = dmxdev->demux->set_source(dmxdev->demux, parg);
  break;

 case 135:
  if (!dmxdev->demux->get_stc) {
   ret = -EINVAL;
   break;
  }
  ret = dmxdev->demux->get_stc(dmxdev->demux,
          ((struct dmx_stc *)parg)->num,
          &((struct dmx_stc *)parg)->stc,
          &((struct dmx_stc *)parg)->base);
  break;

 case 138:
  if (mutex_lock_interruptible(&dmxdevfilter->mutex)) {
   ret = -ERESTARTSYS;
   break;
  }
  ret = dvb_dmxdev_add_pid(dmxdev, dmxdevfilter, *(u16 *)parg);
  mutex_unlock(&dmxdevfilter->mutex);
  break;

 case 134:
  if (mutex_lock_interruptible(&dmxdevfilter->mutex)) {
   ret = -ERESTARTSYS;
   break;
  }
  ret = dvb_dmxdev_remove_pid(dmxdev, dmxdevfilter, *(u16 *)parg);
  mutex_unlock(&dmxdevfilter->mutex);
  break;

 default:
  ret = -EINVAL;
  break;
 }
 mutex_unlock(&dmxdev->mutex);
 return ret;
}
