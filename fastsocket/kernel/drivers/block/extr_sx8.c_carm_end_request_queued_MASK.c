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
struct carm_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct carm_host*,struct carm_request*) ; 

__attribute__((used)) static inline void FUNC3(struct carm_host *host,
					   struct carm_request *crq,
					   int error)
{
	struct request *req = crq->rq;
	int rc;

	FUNC0(req, error);

	rc = FUNC2(host, crq);
	FUNC1(rc == 0);
}