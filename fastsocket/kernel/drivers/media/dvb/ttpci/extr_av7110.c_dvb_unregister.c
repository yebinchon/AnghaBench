
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* remove_frontend ) (TYPE_1__*,int *) ;int (* close ) (TYPE_1__*) ;} ;
struct dvb_demux {TYPE_1__ dmx; } ;
struct av7110 {int osd_dev; int * fe; struct dvb_demux demux; int dmxdev; int mem_frontend; int hw_frontend; int dvb_net; struct dvb_demux demux1; int dmxdev1; int dvb_net1; int registered; } ;


 int av7110_av_unregister (struct av7110*) ;
 int av7110_ca_unregister (struct av7110*) ;
 scalar_t__ budgetpatch ;
 int dprintk (int,char*,struct av7110*) ;
 int dvb_dmx_release (struct dvb_demux*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_frontend_detach (int *) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_device (int ) ;
 int dvb_unregister_frontend (int *) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (TYPE_1__*,int *) ;
 int stub4 (TYPE_1__*,int *) ;

__attribute__((used)) static void dvb_unregister(struct av7110 *av7110)
{
 struct dvb_demux *dvbdemux = &av7110->demux;
 struct dvb_demux *dvbdemux1 = &av7110->demux1;

 dprintk(4, "%p\n", av7110);

 if (!av7110->registered)
  return;

 if (budgetpatch) {
  dvb_net_release(&av7110->dvb_net1);
  dvbdemux->dmx.close(&dvbdemux1->dmx);
  dvb_dmxdev_release(&av7110->dmxdev1);
  dvb_dmx_release(&av7110->demux1);
 }

 dvb_net_release(&av7110->dvb_net);

 dvbdemux->dmx.close(&dvbdemux->dmx);
 dvbdemux->dmx.remove_frontend(&dvbdemux->dmx, &av7110->hw_frontend);
 dvbdemux->dmx.remove_frontend(&dvbdemux->dmx, &av7110->mem_frontend);

 dvb_dmxdev_release(&av7110->dmxdev);
 dvb_dmx_release(&av7110->demux);

 if (av7110->fe != ((void*)0)) {
  dvb_unregister_frontend(av7110->fe);
  dvb_frontend_detach(av7110->fe);
 }
 dvb_unregister_device(av7110->osd_dev);
 av7110_av_unregister(av7110);
 av7110_ca_unregister(av7110);
}
