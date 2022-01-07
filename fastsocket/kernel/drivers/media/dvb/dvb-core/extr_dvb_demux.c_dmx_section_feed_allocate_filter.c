
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmx_section_filter {int * priv; struct dmx_section_feed* parent; } ;
struct dvb_demux_filter {struct dvb_demux_filter* next; int state; int type; struct dvb_demux_feed* feed; struct dmx_section_filter filter; } ;
struct dvb_demux_feed {struct dvb_demux_filter* filter; struct dvb_demux* demux; } ;
struct dvb_demux {int mutex; int lock; } ;
struct dmx_section_feed {int dummy; } ;


 int DMX_STATE_READY ;
 int DMX_TYPE_SEC ;
 int EBUSY ;
 int ERESTARTSYS ;
 struct dvb_demux_filter* dvb_dmx_filter_alloc (struct dvb_demux*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int dmx_section_feed_allocate_filter(struct dmx_section_feed *feed,
         struct dmx_section_filter **filter)
{
 struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *)feed;
 struct dvb_demux *dvbdemux = dvbdmxfeed->demux;
 struct dvb_demux_filter *dvbdmxfilter;

 if (mutex_lock_interruptible(&dvbdemux->mutex))
  return -ERESTARTSYS;

 dvbdmxfilter = dvb_dmx_filter_alloc(dvbdemux);
 if (!dvbdmxfilter) {
  mutex_unlock(&dvbdemux->mutex);
  return -EBUSY;
 }

 spin_lock_irq(&dvbdemux->lock);
 *filter = &dvbdmxfilter->filter;
 (*filter)->parent = feed;
 (*filter)->priv = ((void*)0);
 dvbdmxfilter->feed = dvbdmxfeed;
 dvbdmxfilter->type = DMX_TYPE_SEC;
 dvbdmxfilter->state = DMX_STATE_READY;
 dvbdmxfilter->next = dvbdmxfeed->filter;
 dvbdmxfeed->filter = dvbdmxfilter;
 spin_unlock_irq(&dvbdemux->lock);

 mutex_unlock(&dvbdemux->mutex);
 return 0;
}
