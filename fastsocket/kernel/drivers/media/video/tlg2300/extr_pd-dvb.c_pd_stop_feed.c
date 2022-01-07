
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pd_dvb_adapter {int active_feed; } ;
struct dvb_demux_feed {TYPE_1__* demux; } ;
struct TYPE_2__ {struct pd_dvb_adapter* priv; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int dvb_stop_streaming (struct pd_dvb_adapter*) ;

__attribute__((used)) static int pd_stop_feed(struct dvb_demux_feed *feed)
{
 struct pd_dvb_adapter *pd_dvb = feed->demux->priv;

 if (!pd_dvb)
  return -1;
 if (atomic_dec_and_test(&pd_dvb->active_feed))
  dvb_stop_streaming(pd_dvb);
 return 0;
}
