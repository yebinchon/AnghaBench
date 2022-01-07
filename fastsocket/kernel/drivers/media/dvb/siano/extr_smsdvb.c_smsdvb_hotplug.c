
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int capabilities; } ;
struct TYPE_13__ {int filternum; int feednum; TYPE_1__ dmx; int stop_feed; int start_feed; } ;
struct TYPE_12__ {int filternum; scalar_t__ capabilities; TYPE_1__* demux; } ;
struct TYPE_11__ {int ops; } ;
struct smsdvb_client_t {int event_fe_state; int event_unc_state; int adapter; TYPE_7__ demux; TYPE_5__ dmxdev; TYPE_3__ frontend; int entry; int tune_done; struct smscore_device_t* coredev; int smsclient; } ;
struct smscore_device_t {int dummy; } ;
struct smsclient_params_t {int initial_id; struct smsdvb_client_t* context; int onremove_handler; int onresponse_handler; int data_type; } ;
struct dvb_frontend_ops {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_10__ {int name; } ;


 int DMX_TS_FILTERING ;
 int DVB3_EVENT_HOTPLUG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MSG_SMS_DVBT_BDA_DATA ;
 int THIS_MODULE ;
 int adapter_nr ;
 int dvb_dmx_init (TYPE_7__*) ;
 int dvb_dmx_release (TYPE_7__*) ;
 int dvb_dmxdev_init (TYPE_5__*,int *) ;
 int dvb_dmxdev_release (TYPE_5__*) ;
 int dvb_register_adapter (int *,int ,int ,struct device*,int ) ;
 int dvb_register_frontend (int *,TYPE_3__*) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (TYPE_3__*) ;
 int g_smsdvb_clients ;
 int g_smsdvb_clientslock ;
 int init_completion (int *) ;
 int kfree (struct smsdvb_client_t*) ;
 int kmutex_lock (int *) ;
 int kmutex_unlock (int *) ;
 struct smsdvb_client_t* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int *,int *,int) ;
 int sms_board_dvb3_event (struct smsdvb_client_t*,int ) ;
 int sms_board_setup (struct smscore_device_t*) ;
 int sms_err (char*,...) ;
 TYPE_2__* sms_get_board (int ) ;
 int sms_info (char*) ;
 int smscore_get_board_id (struct smscore_device_t*) ;
 int smscore_register_client (struct smscore_device_t*,struct smsclient_params_t*,int *) ;
 int smsdvb_fe_ops ;
 int smsdvb_onremove ;
 int smsdvb_onresponse ;
 int smsdvb_start_feed ;
 int smsdvb_stop_feed ;

__attribute__((used)) static int smsdvb_hotplug(struct smscore_device_t *coredev,
     struct device *device, int arrival)
{
 struct smsclient_params_t params;
 struct smsdvb_client_t *client;
 int rc;


 if (!arrival)
  return 0;
 client = kzalloc(sizeof(struct smsdvb_client_t), GFP_KERNEL);
 if (!client) {
  sms_err("kmalloc() failed");
  return -ENOMEM;
 }


 rc = dvb_register_adapter(&client->adapter,
      sms_get_board(
     smscore_get_board_id(coredev))->name,
      THIS_MODULE, device, adapter_nr);
 if (rc < 0) {
  sms_err("dvb_register_adapter() failed %d", rc);
  goto adapter_error;
 }


 client->demux.dmx.capabilities = DMX_TS_FILTERING;
 client->demux.filternum = 32;
 client->demux.feednum = 32;
 client->demux.start_feed = smsdvb_start_feed;
 client->demux.stop_feed = smsdvb_stop_feed;

 rc = dvb_dmx_init(&client->demux);
 if (rc < 0) {
  sms_err("dvb_dmx_init failed %d", rc);
  goto dvbdmx_error;
 }


 client->dmxdev.filternum = 32;
 client->dmxdev.demux = &client->demux.dmx;
 client->dmxdev.capabilities = 0;

 rc = dvb_dmxdev_init(&client->dmxdev, &client->adapter);
 if (rc < 0) {
  sms_err("dvb_dmxdev_init failed %d", rc);
  goto dmxdev_error;
 }


 memcpy(&client->frontend.ops, &smsdvb_fe_ops,
        sizeof(struct dvb_frontend_ops));

 rc = dvb_register_frontend(&client->adapter, &client->frontend);
 if (rc < 0) {
  sms_err("frontend registration failed %d", rc);
  goto frontend_error;
 }

 params.initial_id = 1;
 params.data_type = MSG_SMS_DVBT_BDA_DATA;
 params.onresponse_handler = smsdvb_onresponse;
 params.onremove_handler = smsdvb_onremove;
 params.context = client;

 rc = smscore_register_client(coredev, &params, &client->smsclient);
 if (rc < 0) {
  sms_err("smscore_register_client() failed %d", rc);
  goto client_error;
 }

 client->coredev = coredev;

 init_completion(&client->tune_done);

 kmutex_lock(&g_smsdvb_clientslock);

 list_add(&client->entry, &g_smsdvb_clients);

 kmutex_unlock(&g_smsdvb_clientslock);

 client->event_fe_state = -1;
 client->event_unc_state = -1;
 sms_board_dvb3_event(client, DVB3_EVENT_HOTPLUG);

 sms_info("success");
 sms_board_setup(coredev);

 return 0;

client_error:
 dvb_unregister_frontend(&client->frontend);

frontend_error:
 dvb_dmxdev_release(&client->dmxdev);

dmxdev_error:
 dvb_dmx_release(&client->demux);

dvbdmx_error:
 dvb_unregister_adapter(&client->adapter);

adapter_error:
 kfree(client);
 return rc;
}
