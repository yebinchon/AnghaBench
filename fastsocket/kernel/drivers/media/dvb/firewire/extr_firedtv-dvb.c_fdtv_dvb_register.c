
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_14__ {int (* add_frontend ) (TYPE_1__*,TYPE_2__*) ;int (* connect_frontend ) (TYPE_1__*,TYPE_2__*) ;int (* remove_frontend ) (TYPE_1__*,TYPE_2__*) ;int (* close ) (TYPE_1__*) ;scalar_t__ capabilities; } ;
struct TYPE_13__ {int filternum; int feednum; TYPE_1__ dmx; int * write_to_decoder; int stop_feed; int start_feed; struct firedtv* priv; } ;
struct TYPE_16__ {int filternum; scalar_t__ capabilities; TYPE_1__* demux; } ;
struct TYPE_15__ {int source; } ;
struct firedtv {size_t type; int device; int adapter; TYPE_11__ demux; TYPE_9__ dmxdev; TYPE_2__ frontend; int dvbnet; int fe; } ;


 int DMX_FRONTEND_0 ;
 int THIS_MODULE ;
 int adapter_nr ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int dvb_dmx_init (TYPE_11__*) ;
 int dvb_dmx_release (TYPE_11__*) ;
 int dvb_dmxdev_init (TYPE_9__*,int *) ;
 int dvb_dmxdev_release (TYPE_9__*) ;
 int dvb_net_init (int *,int *,TYPE_1__*) ;
 int dvb_net_release (int *) ;
 int dvb_register_adapter (int *,int ,int ,int ,int ) ;
 int dvb_register_frontend (int *,int *) ;
 int dvb_unregister_adapter (int *) ;
 int fdtv_ca_register (struct firedtv*) ;
 int fdtv_frontend_init (struct firedtv*) ;
 int * fdtv_model_names ;
 int fdtv_start_feed ;
 int fdtv_stop_feed ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;
 int stub2 (TYPE_1__*,TYPE_2__*) ;
 int stub3 (TYPE_1__*) ;
 int stub4 (TYPE_1__*,TYPE_2__*) ;

int fdtv_dvb_register(struct firedtv *fdtv)
{
 int err;

 err = dvb_register_adapter(&fdtv->adapter, fdtv_model_names[fdtv->type],
       THIS_MODULE, fdtv->device, adapter_nr);
 if (err < 0)
  goto fail_log;


 fdtv->demux.dmx.capabilities = 0;

 fdtv->demux.priv = fdtv;
 fdtv->demux.filternum = 16;
 fdtv->demux.feednum = 16;
 fdtv->demux.start_feed = fdtv_start_feed;
 fdtv->demux.stop_feed = fdtv_stop_feed;
 fdtv->demux.write_to_decoder = ((void*)0);

 err = dvb_dmx_init(&fdtv->demux);
 if (err)
  goto fail_unreg_adapter;

 fdtv->dmxdev.filternum = 16;
 fdtv->dmxdev.demux = &fdtv->demux.dmx;
 fdtv->dmxdev.capabilities = 0;

 err = dvb_dmxdev_init(&fdtv->dmxdev, &fdtv->adapter);
 if (err)
  goto fail_dmx_release;

 fdtv->frontend.source = DMX_FRONTEND_0;

 err = fdtv->demux.dmx.add_frontend(&fdtv->demux.dmx, &fdtv->frontend);
 if (err)
  goto fail_dmxdev_release;

 err = fdtv->demux.dmx.connect_frontend(&fdtv->demux.dmx,
            &fdtv->frontend);
 if (err)
  goto fail_rem_frontend;

 dvb_net_init(&fdtv->adapter, &fdtv->dvbnet, &fdtv->demux.dmx);

 fdtv_frontend_init(fdtv);
 err = dvb_register_frontend(&fdtv->adapter, &fdtv->fe);
 if (err)
  goto fail_net_release;

 err = fdtv_ca_register(fdtv);
 if (err)
  dev_info(fdtv->device,
    "Conditional Access Module not enabled\n");
 return 0;

fail_net_release:
 dvb_net_release(&fdtv->dvbnet);
 fdtv->demux.dmx.close(&fdtv->demux.dmx);
fail_rem_frontend:
 fdtv->demux.dmx.remove_frontend(&fdtv->demux.dmx, &fdtv->frontend);
fail_dmxdev_release:
 dvb_dmxdev_release(&fdtv->dmxdev);
fail_dmx_release:
 dvb_dmx_release(&fdtv->demux);
fail_unreg_adapter:
 dvb_unregister_adapter(&fdtv->adapter);
fail_log:
 dev_err(fdtv->device, "DVB initialization failed\n");
 return err;
}
