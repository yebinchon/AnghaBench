
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dmx_section_feed {int release_filter; int stop_filtering; int start_filtering; int allocate_filter; int set; int * priv; struct dmx_demux* parent; scalar_t__ is_filtering; scalar_t__ tsfeedp; scalar_t__ seclen; scalar_t__ secbufp; int secbuf_base; int secbuf; } ;
struct TYPE_4__ {struct dmx_section_feed sec; } ;
struct TYPE_3__ {int sec; } ;
struct dvb_demux_feed {int pid; TYPE_2__ feed; int * buffer; int * filter; struct dvb_demux* demux; TYPE_1__ cb; int type; } ;
struct dvb_demux {int mutex; } ;
struct dmx_demux {int dummy; } ;
typedef int dmx_section_cb ;


 int DMX_TYPE_SEC ;
 int EBUSY ;
 int ERESTARTSYS ;
 int dmx_section_feed_allocate_filter ;
 int dmx_section_feed_release_filter ;
 int dmx_section_feed_set ;
 int dmx_section_feed_start_filtering ;
 int dmx_section_feed_stop_filtering ;
 struct dvb_demux_feed* dvb_dmx_feed_alloc (struct dvb_demux*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dvbdmx_allocate_section_feed(struct dmx_demux *demux,
     struct dmx_section_feed **feed,
     dmx_section_cb callback)
{
 struct dvb_demux *dvbdmx = (struct dvb_demux *)demux;
 struct dvb_demux_feed *dvbdmxfeed;

 if (mutex_lock_interruptible(&dvbdmx->mutex))
  return -ERESTARTSYS;

 if (!(dvbdmxfeed = dvb_dmx_feed_alloc(dvbdmx))) {
  mutex_unlock(&dvbdmx->mutex);
  return -EBUSY;
 }

 dvbdmxfeed->type = DMX_TYPE_SEC;
 dvbdmxfeed->cb.sec = callback;
 dvbdmxfeed->demux = dvbdmx;
 dvbdmxfeed->pid = 0xffff;
 dvbdmxfeed->feed.sec.secbuf = dvbdmxfeed->feed.sec.secbuf_base;
 dvbdmxfeed->feed.sec.secbufp = dvbdmxfeed->feed.sec.seclen = 0;
 dvbdmxfeed->feed.sec.tsfeedp = 0;
 dvbdmxfeed->filter = ((void*)0);
 dvbdmxfeed->buffer = ((void*)0);

 (*feed) = &dvbdmxfeed->feed.sec;
 (*feed)->is_filtering = 0;
 (*feed)->parent = demux;
 (*feed)->priv = ((void*)0);

 (*feed)->set = dmx_section_feed_set;
 (*feed)->allocate_filter = dmx_section_feed_allocate_filter;
 (*feed)->start_filtering = dmx_section_feed_start_filtering;
 (*feed)->stop_filtering = dmx_section_feed_stop_filtering;
 (*feed)->release_filter = dmx_section_feed_release_filter;

 mutex_unlock(&dvbdmx->mutex);
 return 0;
}
