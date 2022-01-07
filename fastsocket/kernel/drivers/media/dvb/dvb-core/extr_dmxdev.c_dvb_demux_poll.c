
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct dmxdev_filter* private_data; } ;
struct TYPE_2__ {scalar_t__ error; int queue; } ;
struct dmxdev_filter {scalar_t__ state; TYPE_1__ buffer; } ;
typedef int poll_table ;


 scalar_t__ DMXDEV_STATE_DONE ;
 scalar_t__ DMXDEV_STATE_GO ;
 scalar_t__ DMXDEV_STATE_TIMEDOUT ;
 unsigned int EINVAL ;
 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLPRI ;
 unsigned int POLLRDNORM ;
 int dvb_ringbuffer_empty (TYPE_1__*) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int dvb_demux_poll(struct file *file, poll_table *wait)
{
 struct dmxdev_filter *dmxdevfilter = file->private_data;
 unsigned int mask = 0;

 if (!dmxdevfilter)
  return -EINVAL;

 poll_wait(file, &dmxdevfilter->buffer.queue, wait);

 if (dmxdevfilter->state != DMXDEV_STATE_GO &&
     dmxdevfilter->state != DMXDEV_STATE_DONE &&
     dmxdevfilter->state != DMXDEV_STATE_TIMEDOUT)
  return 0;

 if (dmxdevfilter->buffer.error)
  mask |= (POLLIN | POLLRDNORM | POLLPRI | POLLERR);

 if (!dvb_ringbuffer_empty(&dmxdevfilter->buffer))
  mask |= (POLLIN | POLLRDNORM | POLLPRI);

 return mask;
}
