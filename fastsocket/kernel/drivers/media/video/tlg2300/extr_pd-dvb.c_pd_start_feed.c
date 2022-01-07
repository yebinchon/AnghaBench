
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pd_dvb_adapter {int active_feed; } ;
struct dvb_demux_feed {TYPE_1__* demux; } ;
struct TYPE_2__ {struct pd_dvb_adapter* priv; } ;


 int atomic_inc_return (int *) ;
 int dvb_start_streaming (struct pd_dvb_adapter*) ;

__attribute__((used)) static int pd_start_feed(struct dvb_demux_feed *feed)
{
 struct pd_dvb_adapter *pd_dvb = feed->demux->priv;
 int ret = 0;

 if (!pd_dvb)
  return -1;
 if (atomic_inc_return(&pd_dvb->active_feed) == 1)
  ret = dvb_start_streaming(pd_dvb);
 return ret;
}
