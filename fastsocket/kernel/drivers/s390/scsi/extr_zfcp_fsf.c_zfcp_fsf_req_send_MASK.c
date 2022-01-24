#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  count; } ;
struct zfcp_qdio {TYPE_1__ req_q; } ;
struct TYPE_4__ {int /*<<< orphan*/  qdio_outb_usage; } ;
struct zfcp_fsf_req {int /*<<< orphan*/  timer; TYPE_2__ queue_req; int /*<<< orphan*/  issued; int /*<<< orphan*/  list; int /*<<< orphan*/  req_id; int /*<<< orphan*/ * qtcb; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  req_no; int /*<<< orphan*/  fsf_req_seq_no; int /*<<< orphan*/  req_list_lock; int /*<<< orphan*/ * req_list; struct zfcp_qdio* qdio; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*,struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC7 (struct zfcp_qdio*,TYPE_2__*) ; 
 scalar_t__ FUNC8 (struct zfcp_adapter*,struct zfcp_fsf_req*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_adapter*,struct zfcp_fsf_req*) ; 

__attribute__((used)) static int FUNC11(struct zfcp_fsf_req *req)
{
	struct zfcp_adapter *adapter = req->adapter;
	struct zfcp_qdio *qdio = adapter->qdio;
	unsigned long	     flags;
	int		     idx;
	int		     with_qtcb = (req->qtcb != NULL);

	/* put allocated FSF request into hash table */
	FUNC4(&adapter->req_list_lock, flags);
	idx = FUNC9(req->req_id);
	FUNC3(&req->list, &adapter->req_list[idx]);
	FUNC5(&adapter->req_list_lock, flags);

	req->queue_req.qdio_outb_usage = FUNC0(&qdio->req_q.count);
	req->issued = FUNC2();
	if (FUNC7(qdio, &req->queue_req)) {
		FUNC1(&req->timer);
		FUNC4(&adapter->req_list_lock, flags);
		/* lookup request again, list might have changed */
		if (FUNC8(adapter, req))
			FUNC10(adapter, req);
		FUNC5(&adapter->req_list_lock, flags);
		FUNC6(adapter, 0, "fsrs__1", req);
		return -EIO;
	}

	/* Don't increase for unsolicited status */
	if (with_qtcb)
		adapter->fsf_req_seq_no++;
	adapter->req_no++;

	return 0;
}