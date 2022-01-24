#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {int /*<<< orphan*/  handler; struct zfcp_erp_action* erp_action; TYPE_6__* qtcb; int /*<<< orphan*/  queue_req; int /*<<< orphan*/  status; } ;
struct zfcp_erp_action {struct zfcp_fsf_req* fsf_req; TYPE_1__* adapter; } ;
struct qdio_buffer_element {int /*<<< orphan*/  eflags; int /*<<< orphan*/  sflags; } ;
struct TYPE_10__ {int feature_selection; } ;
struct TYPE_11__ {TYPE_4__ config; } ;
struct TYPE_12__ {TYPE_5__ bottom; } ;
struct TYPE_8__ {int /*<<< orphan*/  erp_req; } ;
struct TYPE_9__ {TYPE_2__ pool; } ;
struct TYPE_7__ {struct zfcp_qdio* qdio; } ;

/* Variables and functions */
 int EIO ; 
 int FSF_FEATURE_CFDC ; 
 int FSF_FEATURE_LUN_SHARING ; 
 int FSF_FEATURE_NOTIFICATION_LOST ; 
 int FSF_FEATURE_UPDATE_ALERT ; 
 int /*<<< orphan*/  FSF_QTCB_EXCHANGE_CONFIG_DATA ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_EFLAGS_LAST_ENTRY ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_READ ; 
 int /*<<< orphan*/  ZFCP_STATUS_FSFREQ_CLEANUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfcp_fsf_exchange_config_data_handler ; 
 struct zfcp_fsf_req* FUNC4 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC6 (struct zfcp_qdio*) ; 
 int FUNC7 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_fsf_req*) ; 
 struct qdio_buffer_element* FUNC9 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

int FUNC10(struct zfcp_erp_action *erp_action)
{
	struct qdio_buffer_element *sbale;
	struct zfcp_fsf_req *req;
	struct zfcp_qdio *qdio = erp_action->adapter->qdio;
	int retval = -EIO;

	FUNC2(&qdio->req_q_lock);
	if (FUNC6(qdio))
		goto out;

	req = FUNC4(qdio, FSF_QTCB_EXCHANGE_CONFIG_DATA,
				  qdio->adapter->pool.erp_req);

	if (FUNC0(req)) {
		retval = FUNC1(req);
		goto out;
	}

	req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
	sbale = FUNC9(qdio, &req->queue_req);
	sbale[0].sflags |= SBAL_SFLAGS0_TYPE_READ;
	sbale[1].eflags |= SBAL_EFLAGS_LAST_ENTRY;

	req->qtcb->bottom.config.feature_selection =
			FSF_FEATURE_CFDC |
			FSF_FEATURE_LUN_SHARING |
			FSF_FEATURE_NOTIFICATION_LOST |
			FSF_FEATURE_UPDATE_ALERT;
	req->erp_action = erp_action;
	req->handler = zfcp_fsf_exchange_config_data_handler;
	erp_action->fsf_req = req;

	FUNC8(req);
	retval = FUNC7(req);
	if (retval) {
		FUNC5(req);
		erp_action->fsf_req = NULL;
	}
out:
	FUNC3(&qdio->req_q_lock);
	return retval;
}