#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct viosrp_crq {int valid; int format; scalar_t__ status; scalar_t__ IU_data_ptr; } ;
struct srp_event_struct {TYPE_6__* hostdata; int /*<<< orphan*/  list; int /*<<< orphan*/  (* done ) (struct srp_event_struct*) ;TYPE_4__* cmnd; int /*<<< orphan*/  timer; TYPE_3__* xfer_iu; int /*<<< orphan*/  free; } ;
struct ibmvscsi_host_data {int client_migrated; int reenable_crq; int /*<<< orphan*/  dev; int /*<<< orphan*/  request_limit; int /*<<< orphan*/  pool; int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  host; } ;
struct TYPE_14__ {long (* send_crq ) (struct ibmvscsi_host_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {TYPE_5__* host; int /*<<< orphan*/  pool; } ;
struct TYPE_12__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_11__ {int result; } ;
struct TYPE_8__ {int /*<<< orphan*/  req_lim_delta; } ;
struct TYPE_9__ {TYPE_1__ rsp; } ;
struct TYPE_10__ {TYPE_2__ srp; } ;

/* Variables and functions */
 int DID_ERROR ; 
 int /*<<< orphan*/  DID_REQUEUE ; 
 int /*<<< orphan*/  IBMVSCSI_CRQ_INIT_COMPLETE ; 
 scalar_t__ VIOSRP_OK ; 
 scalar_t__ VIOSRP_OK2 ; 
 scalar_t__ VIOSRP_SRP_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct srp_event_struct*) ; 
 TYPE_7__* ibmvscsi_ops ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvscsi_host_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct ibmvscsi_host_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ibmvscsi_host_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long) ; 
 long FUNC14 (struct ibmvscsi_host_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct srp_event_struct*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct srp_event_struct*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

void FUNC18(struct viosrp_crq *crq,
			 struct ibmvscsi_host_data *hostdata)
{
	long rc;
	unsigned long flags;
	struct srp_event_struct *evt_struct =
	    (struct srp_event_struct *)crq->IU_data_ptr;
	switch (crq->valid) {
	case 0xC0:		/* initialization */
		switch (crq->format) {
		case 0x01:	/* Initialization message */
			FUNC5(hostdata->dev, "partner initialized\n");
			/* Send back a response */
			if ((rc = ibmvscsi_ops->send_crq(hostdata,
							 IBMVSCSI_CRQ_INIT_COMPLETE, 0)) == 0) {
				/* Now login */
				FUNC8(hostdata);
			} else {
				FUNC4(hostdata->dev, "Unable to send init rsp. rc=%ld\n", rc);
			}

			break;
		case 0x02:	/* Initialization response */
			FUNC5(hostdata->dev, "partner initialization complete\n");

			/* Now login */
			FUNC8(hostdata);
			break;
		default:
			FUNC4(hostdata->dev, "unknown crq message type: %d\n", crq->format);
		}
		return;
	case 0xFF:	/* Hypervisor telling us the connection is closed */
		FUNC11(hostdata->host);
		FUNC2(&hostdata->request_limit, 0);
		if (crq->format == 0x06) {
			/* We need to re-setup the interpartition connection */
			FUNC5(hostdata->dev, "Re-enabling adapter!\n");
			hostdata->client_migrated = 1;
			hostdata->reenable_crq = 1;
			FUNC10(hostdata, DID_REQUEUE);
			FUNC17(&hostdata->work_wait_q);
		} else {
			FUNC4(hostdata->dev, "Virtual adapter failed rc %d!\n",
				crq->format);
			FUNC7(hostdata);
		}
		return;
	case 0x80:		/* real payload */
		break;
	default:
		FUNC4(hostdata->dev, "got an invalid message type 0x%02x\n",
			crq->valid);
		return;
	}

	/* The only kind of payload CRQs we should get are responses to
	 * things we send. Make sure this response is to something we
	 * actually sent
	 */
	if (!FUNC16(&hostdata->pool, evt_struct)) {
		FUNC4(hostdata->dev, "returned correlation_token 0x%p is invalid!\n",
		       (void *)crq->IU_data_ptr);
		return;
	}

	if (FUNC1(&evt_struct->free)) {
		FUNC4(hostdata->dev, "received duplicate correlation_token 0x%p!\n",
			(void *)crq->IU_data_ptr);
		return;
	}

	if (crq->format == VIOSRP_SRP_FORMAT)
		FUNC0(evt_struct->xfer_iu->srp.rsp.req_lim_delta,
			   &hostdata->request_limit);

	FUNC3(&evt_struct->timer);

	if ((crq->status != VIOSRP_OK && crq->status != VIOSRP_OK2) && evt_struct->cmnd)
		evt_struct->cmnd->result = DID_ERROR << 16;
	if (evt_struct->done)
		evt_struct->done(evt_struct);
	else
		FUNC4(hostdata->dev, "returned done() is NULL; not running it!\n");

	/*
	 * Lock the host_lock before messing with these structures, since we
	 * are running in a task context
	 */
	FUNC12(evt_struct->hostdata->host->host_lock, flags);
	FUNC9(&evt_struct->list);
	FUNC6(&evt_struct->hostdata->pool, evt_struct);
	FUNC13(evt_struct->hostdata->host->host_lock, flags);
}