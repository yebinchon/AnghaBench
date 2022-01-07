
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dmx_ts_feed {int set; int stop_filtering; int start_filtering; scalar_t__ is_filtering; int * priv; struct dmx_demux* parent; } ;
struct TYPE_5__ {struct dmx_ts_feed ts; } ;
struct TYPE_4__ {int ts; } ;
struct dvb_demux_feed {int pid; int peslen; TYPE_3__* filter; int state; TYPE_2__ feed; int * buffer; struct dvb_demux* demux; TYPE_1__ cb; void* type; } ;
struct dvb_demux {int mutex; } ;
struct dmx_demux {int dummy; } ;
typedef int dmx_ts_cb ;
struct TYPE_6__ {int state; struct dvb_demux_feed* feed; void* type; } ;


 int DMX_STATE_FREE ;
 int DMX_STATE_READY ;
 void* DMX_TYPE_TS ;
 int EBUSY ;
 int ERESTARTSYS ;
 int dmx_ts_feed_set ;
 int dmx_ts_feed_start_filtering ;
 int dmx_ts_feed_stop_filtering ;
 struct dvb_demux_feed* dvb_dmx_feed_alloc (struct dvb_demux*) ;
 TYPE_3__* dvb_dmx_filter_alloc (struct dvb_demux*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dvbdmx_allocate_ts_feed(struct dmx_demux *dmx,
       struct dmx_ts_feed **ts_feed,
       dmx_ts_cb callback)
{
 struct dvb_demux *demux = (struct dvb_demux *)dmx;
 struct dvb_demux_feed *feed;

 if (mutex_lock_interruptible(&demux->mutex))
  return -ERESTARTSYS;

 if (!(feed = dvb_dmx_feed_alloc(demux))) {
  mutex_unlock(&demux->mutex);
  return -EBUSY;
 }

 feed->type = DMX_TYPE_TS;
 feed->cb.ts = callback;
 feed->demux = demux;
 feed->pid = 0xffff;
 feed->peslen = 0xfffa;
 feed->buffer = ((void*)0);

 (*ts_feed) = &feed->feed.ts;
 (*ts_feed)->parent = dmx;
 (*ts_feed)->priv = ((void*)0);
 (*ts_feed)->is_filtering = 0;
 (*ts_feed)->start_filtering = dmx_ts_feed_start_filtering;
 (*ts_feed)->stop_filtering = dmx_ts_feed_stop_filtering;
 (*ts_feed)->set = dmx_ts_feed_set;

 if (!(feed->filter = dvb_dmx_filter_alloc(demux))) {
  feed->state = DMX_STATE_FREE;
  mutex_unlock(&demux->mutex);
  return -EBUSY;
 }

 feed->filter->type = DMX_TYPE_TS;
 feed->filter->feed = feed;
 feed->filter->state = DMX_STATE_READY;

 mutex_unlock(&demux->mutex);

 return 0;
}
