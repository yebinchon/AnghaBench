
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux_feed {scalar_t__ state; } ;
struct dvb_demux {int feednum; struct dvb_demux_feed* feed; } ;


 scalar_t__ DMX_STATE_ALLOCATED ;
 scalar_t__ DMX_STATE_FREE ;

__attribute__((used)) static struct dvb_demux_feed *dvb_dmx_feed_alloc(struct dvb_demux *demux)
{
 int i;

 for (i = 0; i < demux->feednum; i++)
  if (demux->feed[i].state == DMX_STATE_FREE)
   break;

 if (i == demux->feednum)
  return ((void*)0);

 demux->feed[i].state = DMX_STATE_ALLOCATED;

 return &demux->feed[i];
}
