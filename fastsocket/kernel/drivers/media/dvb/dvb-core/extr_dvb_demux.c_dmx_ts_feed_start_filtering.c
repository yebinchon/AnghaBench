
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {scalar_t__ state; scalar_t__ type; struct dvb_demux* demux; } ;
struct dvb_demux {int (* start_feed ) (struct dvb_demux_feed*) ;int mutex; int lock; } ;
struct dmx_ts_feed {int is_filtering; } ;


 scalar_t__ DMX_STATE_GO ;
 scalar_t__ DMX_STATE_READY ;
 scalar_t__ DMX_TYPE_TS ;
 int EINVAL ;
 int ENODEV ;
 int ERESTARTSYS ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct dvb_demux_feed*) ;

__attribute__((used)) static int dmx_ts_feed_start_filtering(struct dmx_ts_feed *ts_feed)
{
 struct dvb_demux_feed *feed = (struct dvb_demux_feed *)ts_feed;
 struct dvb_demux *demux = feed->demux;
 int ret;

 if (mutex_lock_interruptible(&demux->mutex))
  return -ERESTARTSYS;

 if (feed->state != DMX_STATE_READY || feed->type != DMX_TYPE_TS) {
  mutex_unlock(&demux->mutex);
  return -EINVAL;
 }

 if (!demux->start_feed) {
  mutex_unlock(&demux->mutex);
  return -ENODEV;
 }

 if ((ret = demux->start_feed(feed)) < 0) {
  mutex_unlock(&demux->mutex);
  return ret;
 }

 spin_lock_irq(&demux->lock);
 ts_feed->is_filtering = 1;
 feed->state = DMX_STATE_GO;
 spin_unlock_irq(&demux->lock);
 mutex_unlock(&demux->mutex);

 return 0;
}
