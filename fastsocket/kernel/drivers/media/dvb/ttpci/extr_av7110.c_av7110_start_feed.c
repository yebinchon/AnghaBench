
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sec; } ;
struct dvb_demux_feed {int pid; scalar_t__ type; int ts_type; scalar_t__ pes_type; TYPE_2__ feed; TYPE_5__* filter; struct dvb_demux* demux; } ;
struct TYPE_9__ {TYPE_3__* frontend; } ;
struct dvb_demux {int* pids; int playing; int filternum; TYPE_5__* filter; TYPE_4__ dmx; struct av7110* priv; } ;
struct av7110 {scalar_t__ full_ts; int aout; int avout; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_10__ {scalar_t__ state; scalar_t__ type; TYPE_1__ filter; } ;
struct TYPE_8__ {int source; } ;



 scalar_t__ DMX_STATE_GO ;
 scalar_t__ DMX_STATE_READY ;
 scalar_t__ DMX_TS_PES_OTHER ;
 scalar_t__ DMX_TYPE_SEC ;
 scalar_t__ DMX_TYPE_TS ;
 int EINVAL ;
 int RP_AV ;
 int StartHWFilter (TYPE_5__*) ;
 int TS_DECODER ;
 int TS_PACKET ;
 int av7110_av_start_play (struct av7110*,int ) ;
 int budget_start_feed (struct dvb_demux_feed*) ;
 int dprintk (int,char*,struct av7110*) ;
 int dvb_feed_start_pid (struct dvb_demux_feed*) ;
 int dvb_ringbuffer_flush_spinlock_wakeup (int *) ;

__attribute__((used)) static int av7110_start_feed(struct dvb_demux_feed *feed)
{
 struct dvb_demux *demux = feed->demux;
 struct av7110 *av7110 = demux->priv;
 int ret = 0;

 dprintk(4, "%p\n", av7110);

 if (!demux->dmx.frontend)
  return -EINVAL;

 if (!av7110->full_ts && feed->pid > 0x1fff)
  return -EINVAL;

 if (feed->type == DMX_TYPE_TS) {
  if ((feed->ts_type & TS_DECODER) &&
      (feed->pes_type < DMX_TS_PES_OTHER)) {
   switch (demux->dmx.frontend->source) {
   case 128:
    if (feed->ts_type & TS_DECODER)
           if (feed->pes_type < 2 &&
        !(demux->pids[0] & 0x8000) &&
        !(demux->pids[1] & 0x8000)) {
            dvb_ringbuffer_flush_spinlock_wakeup(&av7110->avout);
            dvb_ringbuffer_flush_spinlock_wakeup(&av7110->aout);
            ret = av7110_av_start_play(av7110,RP_AV);
            if (!ret)
             demux->playing = 1;
     }
    break;
   default:
    ret = dvb_feed_start_pid(feed);
    break;
   }
  } else if ((feed->ts_type & TS_PACKET) &&
      (demux->dmx.frontend->source != 128)) {
   ret = StartHWFilter(feed->filter);
  }
 }

 if (av7110->full_ts) {
  budget_start_feed(feed);
  return ret;
 }

 if (feed->type == DMX_TYPE_SEC) {
  int i;

  for (i = 0; i < demux->filternum; i++) {
   if (demux->filter[i].state != DMX_STATE_READY)
    continue;
   if (demux->filter[i].type != DMX_TYPE_SEC)
    continue;
   if (demux->filter[i].filter.parent != &feed->feed.sec)
    continue;
   demux->filter[i].state = DMX_STATE_GO;
   if (demux->dmx.frontend->source != 128) {
    ret = StartHWFilter(&demux->filter[i]);
    if (ret)
     break;
   }
  }
 }

 return ret;
}
