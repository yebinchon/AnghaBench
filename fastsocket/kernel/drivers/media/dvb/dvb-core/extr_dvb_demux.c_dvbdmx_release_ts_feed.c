
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_demux_feed {scalar_t__ state; int pid; int ts_type; size_t pes_type; TYPE_1__* filter; int * buffer; } ;
struct dvb_demux {int mutex; int ** pesfilter; } ;
struct dmx_ts_feed {int dummy; } ;
struct dmx_demux {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ DMX_STATE_FREE ;
 size_t DMX_TS_PES_OTHER ;
 int EINVAL ;
 int TS_DECODER ;
 int dvb_demux_feed_del (struct dvb_demux_feed*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfree (int *) ;

__attribute__((used)) static int dvbdmx_release_ts_feed(struct dmx_demux *dmx,
      struct dmx_ts_feed *ts_feed)
{
 struct dvb_demux *demux = (struct dvb_demux *)dmx;
 struct dvb_demux_feed *feed = (struct dvb_demux_feed *)ts_feed;

 mutex_lock(&demux->mutex);

 if (feed->state == DMX_STATE_FREE) {
  mutex_unlock(&demux->mutex);
  return -EINVAL;
 }

 vfree(feed->buffer);
 feed->buffer = ((void*)0);


 feed->state = DMX_STATE_FREE;
 feed->filter->state = DMX_STATE_FREE;

 dvb_demux_feed_del(feed);

 feed->pid = 0xffff;

 if (feed->ts_type & TS_DECODER && feed->pes_type < DMX_TS_PES_OTHER)
  demux->pesfilter[feed->pes_type] = ((void*)0);

 mutex_unlock(&demux->mutex);
 return 0;
}
