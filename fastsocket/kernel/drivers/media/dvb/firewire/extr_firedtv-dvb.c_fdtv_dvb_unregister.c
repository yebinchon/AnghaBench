
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* remove_frontend ) (TYPE_1__*,int *) ;int (* close ) (TYPE_1__*) ;} ;
struct TYPE_5__ {TYPE_1__ dmx; } ;
struct firedtv {int adapter; TYPE_3__ demux; int dmxdev; int frontend; int dvbnet; int fe; } ;


 int dvb_dmx_release (TYPE_3__*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (int *) ;
 int fdtv_ca_release (struct firedtv*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*,int *) ;

void fdtv_dvb_unregister(struct firedtv *fdtv)
{
 fdtv_ca_release(fdtv);
 dvb_unregister_frontend(&fdtv->fe);
 dvb_net_release(&fdtv->dvbnet);
 fdtv->demux.dmx.close(&fdtv->demux.dmx);
 fdtv->demux.dmx.remove_frontend(&fdtv->demux.dmx, &fdtv->frontend);
 dvb_dmxdev_release(&fdtv->dmxdev);
 dvb_dmx_release(&fdtv->demux);
 dvb_unregister_adapter(&fdtv->adapter);
}
