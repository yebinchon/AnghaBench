#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ibmvfc_host {int client_migrated; int /*<<< orphan*/  dev; int /*<<< orphan*/  pool; int /*<<< orphan*/  logged_in; int /*<<< orphan*/  state; } ;
struct ibmvfc_event {int /*<<< orphan*/  (* done ) (struct ibmvfc_event*) ;int /*<<< orphan*/  queue; int /*<<< orphan*/  timer; int /*<<< orphan*/  free; } ;
struct ibmvfc_crq {long ioba; int valid; long format; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  DID_REQUEUE ; 
 scalar_t__ IBMVFC_ASYNC_EVENT ; 
#define  IBMVFC_CRQ_CMD_RSP 132 
#define  IBMVFC_CRQ_INIT 131 
#define  IBMVFC_CRQ_INIT_COMPLETE 130 
#define  IBMVFC_CRQ_INIT_RSP 129 
#define  IBMVFC_CRQ_XPORT_EVENT 128 
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_NONE ; 
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_REENABLE ; 
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_RESET ; 
 int /*<<< orphan*/  IBMVFC_LINK_DOWN ; 
 int /*<<< orphan*/  IBMVFC_NO_CRQ ; 
 long IBMVFC_PARTITION_MIGRATED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 long FUNC7 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ibmvfc_event*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct ibmvfc_crq *crq, struct ibmvfc_host *vhost)
{
	long rc;
	struct ibmvfc_event *evt = (struct ibmvfc_event *)crq->ioba;

	switch (crq->valid) {
	case IBMVFC_CRQ_INIT_RSP:
		switch (crq->format) {
		case IBMVFC_CRQ_INIT:
			FUNC3(vhost->dev, "Partner initialized\n");
			/* Send back a response */
			rc = FUNC7(vhost);
			if (rc == 0)
				FUNC4(vhost);
			else
				FUNC2(vhost->dev, "Unable to send init rsp. rc=%ld\n", rc);
			break;
		case IBMVFC_CRQ_INIT_COMPLETE:
			FUNC3(vhost->dev, "Partner initialization complete\n");
			FUNC4(vhost);
			break;
		default:
			FUNC2(vhost->dev, "Unknown crq message type: %d\n", crq->format);
		}
		return;
	case IBMVFC_CRQ_XPORT_EVENT:
		vhost->state = IBMVFC_NO_CRQ;
		vhost->logged_in = 0;
		FUNC8(vhost, IBMVFC_HOST_ACTION_NONE);
		if (crq->format == IBMVFC_PARTITION_MIGRATED) {
			/* We need to re-setup the interpartition connection */
			FUNC3(vhost->dev, "Re-enabling adapter\n");
			vhost->client_migrated = 1;
			FUNC6(vhost, DID_REQUEUE);
			FUNC5(vhost, IBMVFC_LINK_DOWN);
			FUNC8(vhost, IBMVFC_HOST_ACTION_REENABLE);
		} else {
			FUNC2(vhost->dev, "Virtual adapter failed (rc=%d)\n", crq->format);
			FUNC6(vhost, DID_ERROR);
			FUNC5(vhost, IBMVFC_LINK_DOWN);
			FUNC8(vhost, IBMVFC_HOST_ACTION_RESET);
		}
		return;
	case IBMVFC_CRQ_CMD_RSP:
		break;
	default:
		FUNC2(vhost->dev, "Got an invalid message type 0x%02x\n", crq->valid);
		return;
	}

	if (crq->format == IBMVFC_ASYNC_EVENT)
		return;

	/* The only kind of payload CRQs we should get are responses to
	 * things we send. Make sure this response is to something we
	 * actually sent
	 */
	if (FUNC13(!FUNC10(&vhost->pool, evt))) {
		FUNC2(vhost->dev, "Returned correlation_token 0x%08llx is invalid!\n",
			crq->ioba);
		return;
	}

	if (FUNC13(FUNC0(&evt->free))) {
		FUNC2(vhost->dev, "Received duplicate correlation_token 0x%08llx!\n",
			crq->ioba);
		return;
	}

	FUNC1(&evt->timer);
	FUNC11(&evt->queue);
	FUNC9(evt);
	evt->done(evt);
}