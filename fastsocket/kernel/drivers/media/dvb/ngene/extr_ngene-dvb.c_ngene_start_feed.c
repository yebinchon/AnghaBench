
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ngene_channel {scalar_t__ users; int running; TYPE_1__* dev; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct dvb_demux {struct ngene_channel* priv; } ;
struct TYPE_2__ {int cmd_timeout_workaround; } ;


 int set_transfer (struct ngene_channel*,int) ;

int ngene_start_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct dvb_demux *dvbdmx = dvbdmxfeed->demux;
 struct ngene_channel *chan = dvbdmx->priv;

 if (chan->users == 0) {
  if (!chan->dev->cmd_timeout_workaround || !chan->running)
   set_transfer(chan, 1);
 }

 return ++chan->users;
}
