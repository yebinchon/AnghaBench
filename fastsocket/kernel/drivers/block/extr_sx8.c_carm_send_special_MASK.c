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
typedef  scalar_t__ u32 ;
struct carm_request {unsigned int tag; int /*<<< orphan*/  rq; scalar_t__ msg_bucket; int /*<<< orphan*/  msg_subtype; int /*<<< orphan*/  msg_type; } ;
struct carm_msg_ioctl {int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
struct carm_host {int /*<<< orphan*/  oob_q; } ;
typedef  unsigned int (* carm_sspc_t ) (struct carm_host*,unsigned int,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct carm_request*) ; 
 struct carm_request* FUNC3 (struct carm_host*) ; 
 int FUNC4 (unsigned int) ; 
 void* FUNC5 (struct carm_host*,unsigned int) ; 

__attribute__((used)) static int FUNC6 (struct carm_host *host, carm_sspc_t func)
{
	struct carm_request *crq;
	struct carm_msg_ioctl *ioc;
	void *mem;
	unsigned int idx, msg_size;
	int rc;

	crq = FUNC3(host);
	if (!crq)
		return -ENOMEM;

	idx = crq->tag;

	mem = FUNC5(host, idx);

	msg_size = func(host, idx, mem);

	ioc = mem;
	crq->msg_type = ioc->type;
	crq->msg_subtype = ioc->subtype;
	rc = FUNC4(msg_size);
	FUNC0(rc < 0);
	crq->msg_bucket = (u32) rc;

	FUNC1("blk_insert_request, tag == %u\n", idx);
	FUNC2(host->oob_q, crq->rq, 1, crq);

	return 0;
}