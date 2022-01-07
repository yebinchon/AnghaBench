
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmx_demux {int (* remove_frontend ) (struct dmx_demux*,int *) ;int (* close ) (struct dmx_demux*) ;} ;
struct dvb_demux {struct dmx_demux dmx; } ;
struct dvb_adapter {int dummy; } ;
struct cx18_stream {struct cx18_dvb* dvb; struct cx18* cx; } ;
struct cx18_dvb {int fe; int dmxdev; int hw_frontend; int mem_frontend; int dvbnet; struct dvb_demux demux; struct dvb_adapter dvb_adapter; int enabled; } ;
struct cx18 {int dummy; } ;


 int CX18_INFO (char*) ;
 int dvb_dmx_release (struct dvb_demux*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_frontend_detach (int ) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_adapter (struct dvb_adapter*) ;
 int dvb_unregister_frontend (int ) ;
 int stub1 (struct dmx_demux*) ;
 int stub2 (struct dmx_demux*,int *) ;
 int stub3 (struct dmx_demux*,int *) ;

void cx18_dvb_unregister(struct cx18_stream *stream)
{
 struct cx18 *cx = stream->cx;
 struct cx18_dvb *dvb = stream->dvb;
 struct dvb_adapter *dvb_adapter;
 struct dvb_demux *dvbdemux;
 struct dmx_demux *dmx;

 CX18_INFO("unregister DVB\n");

 if (dvb == ((void*)0) || !dvb->enabled)
  return;

 dvb_adapter = &dvb->dvb_adapter;
 dvbdemux = &dvb->demux;
 dmx = &dvbdemux->dmx;

 dmx->close(dmx);
 dvb_net_release(&dvb->dvbnet);
 dmx->remove_frontend(dmx, &dvb->mem_frontend);
 dmx->remove_frontend(dmx, &dvb->hw_frontend);
 dvb_dmxdev_release(&dvb->dmxdev);
 dvb_dmx_release(dvbdemux);
 dvb_unregister_frontend(dvb->fe);
 dvb_frontend_detach(dvb->fe);
 dvb_unregister_adapter(dvb_adapter);
}
