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
struct request {struct request* next_rq; void* resid_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 void* FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct request *req)
{
	FUNC2(req);

	/*
	 * We are now handing the request to the hardware, initialize
	 * resid_len to full count and add the timeout handler.
	 */
	req->resid_len = FUNC3(req);
	if (FUNC4(FUNC1(req)))
		req->next_rq->resid_len = FUNC3(req->next_rq);

	FUNC0(req);
}