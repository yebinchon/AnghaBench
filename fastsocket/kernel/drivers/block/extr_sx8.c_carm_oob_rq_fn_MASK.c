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
struct request_queue {struct carm_host* queuedata; } ;
struct request {struct carm_request* special; } ;
struct carm_request {scalar_t__ n_elem; struct request* rq; } ;
struct carm_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct request* FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct carm_host*,struct request_queue*) ; 
 int FUNC5 (struct carm_host*,struct carm_request*) ; 

__attribute__((used)) static void FUNC6(struct request_queue *q)
{
	struct carm_host *host = q->queuedata;
	struct carm_request *crq;
	struct request *rq;
	int rc;

	while (1) {
		FUNC0("get req\n");
		rq = FUNC2(q);
		if (!rq)
			break;

		crq = rq->special;
		FUNC1(crq != NULL);
		FUNC1(crq->rq == rq);

		crq->n_elem = 0;

		FUNC0("send req\n");
		rc = FUNC5(host, crq);
		if (rc) {
			FUNC3(q, rq);
			FUNC4(host, q);
			return;		/* call us again later, eventually */
		}
	}
}