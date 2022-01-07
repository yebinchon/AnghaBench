
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* remove_frontend ) (TYPE_1__*,int *) ;} ;
struct TYPE_5__ {TYPE_1__ dmx; } ;
struct em28xx_dvb {int adapter; int frontend; TYPE_3__ demux; int dmxdev; int fe_hw; int fe_mem; int net; } ;


 int dvb_dmx_release (TYPE_3__*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_frontend_detach (int ) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (int ) ;
 int stub1 (TYPE_1__*,int *) ;
 int stub2 (TYPE_1__*,int *) ;

__attribute__((used)) static void unregister_dvb(struct em28xx_dvb *dvb)
{
 dvb_net_release(&dvb->net);
 dvb->demux.dmx.remove_frontend(&dvb->demux.dmx, &dvb->fe_mem);
 dvb->demux.dmx.remove_frontend(&dvb->demux.dmx, &dvb->fe_hw);
 dvb_dmxdev_release(&dvb->dmxdev);
 dvb_dmx_release(&dvb->demux);
 dvb_unregister_frontend(dvb->frontend);
 dvb_frontend_detach(dvb->frontend);
 dvb_unregister_adapter(&dvb->adapter);
}
