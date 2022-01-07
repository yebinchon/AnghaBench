
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ngene_info {int* io_type; } ;
struct TYPE_4__ {int (* remove_frontend ) (TYPE_1__*,int *) ;int (* close ) (TYPE_1__*) ;} ;
struct dvb_demux {TYPE_1__ dmx; } ;
struct ngene_channel {size_t number; struct dvb_demux demux; int dmxdev; int mem_frontend; int hw_frontend; int * fe; int demux_tasklet; scalar_t__ running; struct ngene* dev; } ;
struct ngene {int * adapter; scalar_t__ cmd_timeout_workaround; struct ngene_info* card_info; } ;


 int NGENE_IO_TSIN ;
 int NGENE_IO_TSOUT ;
 int dvb_dmx_release (struct dvb_demux*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_frontend_detach (int *) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (int *) ;
 int one_adapter ;
 int set_transfer (struct ngene_channel*,int ) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*,int *) ;
 int stub3 (TYPE_1__*,int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void release_channel(struct ngene_channel *chan)
{
 struct dvb_demux *dvbdemux = &chan->demux;
 struct ngene *dev = chan->dev;
 struct ngene_info *ni = dev->card_info;
 int io = ni->io_type[chan->number];

 if (chan->dev->cmd_timeout_workaround && chan->running)
  set_transfer(chan, 0);

 tasklet_kill(&chan->demux_tasklet);

 if (io & (NGENE_IO_TSIN | NGENE_IO_TSOUT)) {
  if (chan->fe) {
   dvb_unregister_frontend(chan->fe);
   dvb_frontend_detach(chan->fe);
   chan->fe = ((void*)0);
  }
  dvbdemux->dmx.close(&dvbdemux->dmx);
  dvbdemux->dmx.remove_frontend(&dvbdemux->dmx,
           &chan->hw_frontend);
  dvbdemux->dmx.remove_frontend(&dvbdemux->dmx,
           &chan->mem_frontend);
  dvb_dmxdev_release(&chan->dmxdev);
  dvb_dmx_release(&chan->demux);

  if (chan->number == 0 || !one_adapter)
   dvb_unregister_adapter(&dev->adapter[chan->number]);
 }
}
