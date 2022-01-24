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
struct adb_request {int nbytes; int complete; size_t* data; struct adb_request* next; scalar_t__ sent; } ;

/* Variables and functions */
 int EINVAL ; 
 struct adb_request* current_req ; 
 scalar_t__ idle ; 
 struct adb_request* last_req ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int** pmu_data_len ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ pmu_state ; 

int
FUNC3(struct adb_request *req)
{
	unsigned long flags;
	int nsend;

	if (req->nbytes <= 0) {
		req->complete = 1;
		return 0;
	}
	nsend = pmu_data_len[req->data[0]][0];
	if (nsend >= 0 && req->nbytes != nsend + 1) {
		req->complete = 1;
		return -EINVAL;
	}

	req->next = NULL;
	req->sent = 0;
	req->complete = 0;
	FUNC1(flags);

	if (current_req != 0) {
		last_req->next = req;
		last_req = req;
	} else {
		current_req = req;
		last_req = req;
		if (pmu_state == idle)
			FUNC2();
	}

	FUNC0(flags);
	return 0;
}