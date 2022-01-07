
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ngene_channel {int users; TYPE_1__* dev; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct dvb_demux {struct ngene_channel* priv; } ;
struct TYPE_2__ {int cmd_timeout_workaround; } ;


 int set_transfer (struct ngene_channel*,int ) ;

int ngene_stop_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct dvb_demux *dvbdmx = dvbdmxfeed->demux;
 struct ngene_channel *chan = dvbdmx->priv;

 if (--chan->users)
  return chan->users;

 if (!chan->dev->cmd_timeout_workaround)
  set_transfer(chan, 0);

 return 0;
}
