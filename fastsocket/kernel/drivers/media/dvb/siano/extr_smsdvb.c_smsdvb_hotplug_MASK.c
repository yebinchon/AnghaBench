#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  capabilities; } ;
struct TYPE_13__ {int filternum; int feednum; TYPE_1__ dmx; int /*<<< orphan*/  stop_feed; int /*<<< orphan*/  start_feed; } ;
struct TYPE_12__ {int filternum; scalar_t__ capabilities; TYPE_1__* demux; } ;
struct TYPE_11__ {int /*<<< orphan*/  ops; } ;
struct smsdvb_client_t {int event_fe_state; int event_unc_state; int /*<<< orphan*/  adapter; TYPE_7__ demux; TYPE_5__ dmxdev; TYPE_3__ frontend; int /*<<< orphan*/  entry; int /*<<< orphan*/  tune_done; struct smscore_device_t* coredev; int /*<<< orphan*/  smsclient; } ;
struct smscore_device_t {int dummy; } ;
struct smsclient_params_t {int initial_id; struct smsdvb_client_t* context; int /*<<< orphan*/  onremove_handler; int /*<<< orphan*/  onresponse_handler; int /*<<< orphan*/  data_type; } ;
struct dvb_frontend_ops {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMX_TS_FILTERING ; 
 int /*<<< orphan*/  DVB3_EVENT_HOTPLUG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_SMS_DVBT_BDA_DATA ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adapter_nr ; 
 int FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  g_smsdvb_clients ; 
 int /*<<< orphan*/  g_smsdvb_clientslock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct smsdvb_client_t*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct smsdvb_client_t* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (struct smsdvb_client_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct smscore_device_t*) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 TYPE_2__* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (struct smscore_device_t*) ; 
 int FUNC21 (struct smscore_device_t*,struct smsclient_params_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smsdvb_fe_ops ; 
 int /*<<< orphan*/  smsdvb_onremove ; 
 int /*<<< orphan*/  smsdvb_onresponse ; 
 int /*<<< orphan*/  smsdvb_start_feed ; 
 int /*<<< orphan*/  smsdvb_stop_feed ; 

__attribute__((used)) static int FUNC22(struct smscore_device_t *coredev,
			  struct device *device, int arrival)
{
	struct smsclient_params_t params;
	struct smsdvb_client_t *client;
	int rc;

	/* device removal handled by onremove callback */
	if (!arrival)
		return 0;
	client = FUNC12(sizeof(struct smsdvb_client_t), GFP_KERNEL);
	if (!client) {
		FUNC17("kmalloc() failed");
		return -ENOMEM;
	}

	/* register dvb adapter */
	rc = FUNC4(&client->adapter,
				  FUNC18(
					FUNC20(coredev))->name,
				  THIS_MODULE, device, adapter_nr);
	if (rc < 0) {
		FUNC17("dvb_register_adapter() failed %d", rc);
		goto adapter_error;
	}

	/* init dvb demux */
	client->demux.dmx.capabilities = DMX_TS_FILTERING;
	client->demux.filternum = 32; /* todo: nova ??? */
	client->demux.feednum = 32;
	client->demux.start_feed = smsdvb_start_feed;
	client->demux.stop_feed = smsdvb_stop_feed;

	rc = FUNC0(&client->demux);
	if (rc < 0) {
		FUNC17("dvb_dmx_init failed %d", rc);
		goto dvbdmx_error;
	}

	/* init dmxdev */
	client->dmxdev.filternum = 32;
	client->dmxdev.demux = &client->demux.dmx;
	client->dmxdev.capabilities = 0;

	rc = FUNC2(&client->dmxdev, &client->adapter);
	if (rc < 0) {
		FUNC17("dvb_dmxdev_init failed %d", rc);
		goto dmxdev_error;
	}

	/* init and register frontend */
	FUNC14(&client->frontend.ops, &smsdvb_fe_ops,
	       sizeof(struct dvb_frontend_ops));

	rc = FUNC5(&client->adapter, &client->frontend);
	if (rc < 0) {
		FUNC17("frontend registration failed %d", rc);
		goto frontend_error;
	}

	params.initial_id = 1;
	params.data_type = MSG_SMS_DVBT_BDA_DATA;
	params.onresponse_handler = smsdvb_onresponse;
	params.onremove_handler = smsdvb_onremove;
	params.context = client;

	rc = FUNC21(coredev, &params, &client->smsclient);
	if (rc < 0) {
		FUNC17("smscore_register_client() failed %d", rc);
		goto client_error;
	}

	client->coredev = coredev;

	FUNC8(&client->tune_done);

	FUNC10(&g_smsdvb_clientslock);

	FUNC13(&client->entry, &g_smsdvb_clients);

	FUNC11(&g_smsdvb_clientslock);

	client->event_fe_state = -1;
	client->event_unc_state = -1;
	FUNC15(client, DVB3_EVENT_HOTPLUG);

	FUNC19("success");
	FUNC16(coredev);

	return 0;

client_error:
	FUNC7(&client->frontend);

frontend_error:
	FUNC3(&client->dmxdev);

dmxdev_error:
	FUNC1(&client->demux);

dvbdmx_error:
	FUNC6(&client->adapter);

adapter_error:
	FUNC9(client);
	return rc;
}