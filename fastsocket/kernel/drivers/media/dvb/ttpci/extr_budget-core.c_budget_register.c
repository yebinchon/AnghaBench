
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int capabilities; int (* add_frontend ) (TYPE_1__*,TYPE_2__*) ;int (* connect_frontend ) (TYPE_1__*,TYPE_2__*) ;} ;
struct dvb_demux {int filternum; int feednum; TYPE_1__ dmx; int * write_to_decoder; int stop_feed; int start_feed; void* priv; } ;
struct TYPE_10__ {int source; } ;
struct TYPE_11__ {int filternum; scalar_t__ capabilities; TYPE_1__* demux; } ;
struct budget {int dvb_net; int dvb_adapter; TYPE_2__ hw_frontend; TYPE_2__ mem_frontend; TYPE_8__ dmxdev; struct dvb_demux demux; } ;


 int DMX_FRONTEND_0 ;
 int DMX_MEMORY_BASED_FILTERING ;
 int DMX_MEMORY_FE ;
 int DMX_SECTION_FILTERING ;
 int DMX_TS_FILTERING ;
 int budget_start_feed ;
 int budget_stop_feed ;
 int dprintk (int,char*,struct budget*) ;
 int dvb_dmx_init (struct dvb_demux*) ;
 int dvb_dmxdev_init (TYPE_8__*,int *) ;
 int dvb_net_init (int *,int *,TYPE_1__*) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;
 int stub2 (TYPE_1__*,TYPE_2__*) ;
 int stub3 (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int budget_register(struct budget *budget)
{
 struct dvb_demux *dvbdemux = &budget->demux;
 int ret;

 dprintk(2, "budget: %p\n", budget);

 dvbdemux->priv = (void *) budget;

 dvbdemux->filternum = 256;
 dvbdemux->feednum = 256;
 dvbdemux->start_feed = budget_start_feed;
 dvbdemux->stop_feed = budget_stop_feed;
 dvbdemux->write_to_decoder = ((void*)0);

 dvbdemux->dmx.capabilities = (DMX_TS_FILTERING | DMX_SECTION_FILTERING |
          DMX_MEMORY_BASED_FILTERING);

 dvb_dmx_init(&budget->demux);

 budget->dmxdev.filternum = 256;
 budget->dmxdev.demux = &dvbdemux->dmx;
 budget->dmxdev.capabilities = 0;

 dvb_dmxdev_init(&budget->dmxdev, &budget->dvb_adapter);

 budget->hw_frontend.source = DMX_FRONTEND_0;

 ret = dvbdemux->dmx.add_frontend(&dvbdemux->dmx, &budget->hw_frontend);

 if (ret < 0)
  return ret;

 budget->mem_frontend.source = DMX_MEMORY_FE;
 ret = dvbdemux->dmx.add_frontend(&dvbdemux->dmx, &budget->mem_frontend);
 if (ret < 0)
  return ret;

 ret = dvbdemux->dmx.connect_frontend(&dvbdemux->dmx, &budget->hw_frontend);
 if (ret < 0)
  return ret;

 dvb_net_init(&budget->dvb_adapter, &budget->dvb_net, &dvbdemux->dmx);

 return 0;
}
