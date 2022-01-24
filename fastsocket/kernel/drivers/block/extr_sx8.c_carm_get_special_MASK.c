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
struct request {int dummy; } ;
struct carm_request {struct request* rq; } ;
struct carm_host {int /*<<< orphan*/  lock; int /*<<< orphan*/  oob_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WRITE ; 
 struct request* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct carm_request* FUNC1 (struct carm_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct carm_host*,struct carm_request*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct carm_request *FUNC6(struct carm_host *host)
{
	unsigned long flags;
	struct carm_request *crq = NULL;
	struct request *rq;
	int tries = 5000;

	while (tries-- > 0) {
		FUNC4(&host->lock, flags);
		crq = FUNC1(host);
		FUNC5(&host->lock, flags);

		if (crq)
			break;
		FUNC3(10);
	}

	if (!crq)
		return NULL;

	rq = FUNC0(host->oob_q, WRITE /* bogus */, GFP_KERNEL);
	if (!rq) {
		FUNC4(&host->lock, flags);
		FUNC2(host, crq);
		FUNC5(&host->lock, flags);
		return NULL;
	}

	crq->rq = rq;
	return crq;
}