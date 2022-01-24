#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * prev; } ;
struct sclp_req {TYPE_1__ list; int /*<<< orphan*/  sccb; scalar_t__ start_count; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EIO ; 
 int ENODATA ; 
 int /*<<< orphan*/  SCLP_REQ_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (struct sclp_req*) ; 
 int FUNC1 (struct sclp_req*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  sclp_lock ; 
 int /*<<< orphan*/  sclp_req_queue ; 
 scalar_t__ sclp_running_state ; 
 scalar_t__ sclp_running_state_idle ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC6(struct sclp_req *req)
{
	unsigned long flags;
	int rc;

	FUNC4(&sclp_lock, flags);
	if (!FUNC0(req)) {
		FUNC5(&sclp_lock, flags);
		return -EIO;
	}
	req->status = SCLP_REQ_QUEUED;
	req->start_count = 0;
	FUNC2(&req->list, &sclp_req_queue);
	rc = 0;
	/* Start if request is first in list */
	if (sclp_running_state == sclp_running_state_idle &&
	    req->list.prev == &sclp_req_queue) {
		if (!req->sccb) {
			FUNC3(&req->list);
			rc = -ENODATA;
			goto out;
		}
		rc = FUNC1(req);
		if (rc)
			FUNC3(&req->list);
	}
out:
	FUNC5(&sclp_lock, flags);
	return rc;
}