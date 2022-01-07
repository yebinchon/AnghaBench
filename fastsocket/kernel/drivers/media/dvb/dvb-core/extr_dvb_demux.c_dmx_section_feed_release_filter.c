
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_filter {int state; struct dvb_demux_filter* next; struct dvb_demux_feed* feed; } ;
struct dvb_demux_feed {struct dvb_demux_filter* filter; struct dvb_demux* demux; } ;
struct dvb_demux {int mutex; int lock; } ;
struct dmx_section_filter {int dummy; } ;
struct dmx_section_feed {int (* stop_filtering ) (struct dmx_section_feed*) ;scalar_t__ is_filtering; } ;


 int DMX_STATE_FREE ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct dmx_section_feed*) ;

__attribute__((used)) static int dmx_section_feed_release_filter(struct dmx_section_feed *feed,
        struct dmx_section_filter *filter)
{
 struct dvb_demux_filter *dvbdmxfilter = (struct dvb_demux_filter *)filter, *f;
 struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *)feed;
 struct dvb_demux *dvbdmx = dvbdmxfeed->demux;

 mutex_lock(&dvbdmx->mutex);

 if (dvbdmxfilter->feed != dvbdmxfeed) {
  mutex_unlock(&dvbdmx->mutex);
  return -EINVAL;
 }

 if (feed->is_filtering)
  feed->stop_filtering(feed);

 spin_lock_irq(&dvbdmx->lock);
 f = dvbdmxfeed->filter;

 if (f == dvbdmxfilter) {
  dvbdmxfeed->filter = dvbdmxfilter->next;
 } else {
  while (f->next != dvbdmxfilter)
   f = f->next;
  f->next = f->next->next;
 }

 dvbdmxfilter->state = DMX_STATE_FREE;
 spin_unlock_irq(&dvbdmx->lock);
 mutex_unlock(&dvbdmx->mutex);
 return 0;
}
