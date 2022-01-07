
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_demux_feed {scalar_t__ pusi_seen; struct dvb_demux* demux; } ;
struct TYPE_2__ {int frontend; } ;
struct dvb_demux {TYPE_1__ dmx; scalar_t__ priv; } ;
struct budget {int feedlock; int feeding; } ;


 int EINVAL ;
 int dprintk (int,char*,struct budget*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int start_ts_capture (struct budget*) ;

__attribute__((used)) static int budget_start_feed(struct dvb_demux_feed *feed)
{
 struct dvb_demux *demux = feed->demux;
 struct budget *budget = (struct budget *) demux->priv;
 int status = 0;

 dprintk(2, "budget: %p\n", budget);

 if (!demux->dmx.frontend)
  return -EINVAL;

 spin_lock(&budget->feedlock);
 feed->pusi_seen = 0;
 if (budget->feeding++ == 0)
  status = start_ts_capture(budget);
 spin_unlock(&budget->feedlock);
 return status;
}
