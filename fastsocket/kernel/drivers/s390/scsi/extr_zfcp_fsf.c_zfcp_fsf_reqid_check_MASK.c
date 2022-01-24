#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  count; struct qdio_buffer** sbal; } ;
struct zfcp_qdio {TYPE_3__ resp_q; struct zfcp_adapter* adapter; } ;
struct TYPE_5__ {int sbal_response; int /*<<< orphan*/  qdio_inb_usage; } ;
struct zfcp_fsf_req {TYPE_2__ queue_req; int /*<<< orphan*/  list; } ;
struct zfcp_adapter {int /*<<< orphan*/  req_list_lock; TYPE_1__* ccw_device; } ;
struct qdio_buffer_element {int eflags; scalar_t__ addr; } ;
struct qdio_buffer {struct qdio_buffer_element* element; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int QDIO_MAX_ELEMENTS_PER_BUFFER ; 
 int SBAL_EFLAGS_LAST_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_adapter*) ; 
 struct zfcp_fsf_req* FUNC9 (struct zfcp_adapter*,unsigned long) ; 

void FUNC10(struct zfcp_qdio *qdio, int sbal_idx)
{
	struct zfcp_adapter *adapter = qdio->adapter;
	struct qdio_buffer *sbal = qdio->resp_q.sbal[sbal_idx];
	struct qdio_buffer_element *sbale;
	struct zfcp_fsf_req *fsf_req;
	unsigned long flags, req_id;
	int idx;

	for (idx = 0; idx < QDIO_MAX_ELEMENTS_PER_BUFFER; idx++) {

		sbale = &sbal->element[idx];
		req_id = (unsigned long) sbale->addr;
		FUNC5(&adapter->req_list_lock, flags);
		fsf_req = FUNC9(adapter, req_id);

		if (!fsf_req) {
			/*
			 * Unknown request means that we have potentially memory
			 * corruption and must stop the machine immediately.
			 */
			FUNC8(adapter);
			FUNC4("error: unknown req_id (%lx) on adapter %s.\n",
			      req_id, FUNC1(&adapter->ccw_device->dev));
		}

		FUNC3(&fsf_req->list);
		FUNC6(&adapter->req_list_lock, flags);

		fsf_req->queue_req.sbal_response = sbal_idx;
		fsf_req->queue_req.qdio_inb_usage =
			FUNC0(&qdio->resp_q.count);
		FUNC7(fsf_req);

		if (FUNC2(sbale->eflags & SBAL_EFLAGS_LAST_ENTRY))
			break;
	}
}