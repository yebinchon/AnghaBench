
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; int * data; } ;
struct dmxdev_filter {int mutex; TYPE_1__ buffer; } ;
struct dmxdev {int mutex; int lock; } ;


 int DMXDEV_STATE_FREE ;
 int dvb_dmxdev_filter_reset (struct dmxdev_filter*) ;
 int dvb_dmxdev_filter_state_set (struct dmxdev_filter*,int ) ;
 int dvb_dmxdev_filter_stop (struct dmxdev_filter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vfree (void*) ;
 int wake_up (int *) ;

__attribute__((used)) static int dvb_dmxdev_filter_free(struct dmxdev *dmxdev,
      struct dmxdev_filter *dmxdevfilter)
{
 mutex_lock(&dmxdev->mutex);
 mutex_lock(&dmxdevfilter->mutex);

 dvb_dmxdev_filter_stop(dmxdevfilter);
 dvb_dmxdev_filter_reset(dmxdevfilter);

 if (dmxdevfilter->buffer.data) {
  void *mem = dmxdevfilter->buffer.data;

  spin_lock_irq(&dmxdev->lock);
  dmxdevfilter->buffer.data = ((void*)0);
  spin_unlock_irq(&dmxdev->lock);
  vfree(mem);
 }

 dvb_dmxdev_filter_state_set(dmxdevfilter, DMXDEV_STATE_FREE);
 wake_up(&dmxdevfilter->buffer.queue);
 mutex_unlock(&dmxdevfilter->mutex);
 mutex_unlock(&dmxdev->mutex);
 return 0;
}
