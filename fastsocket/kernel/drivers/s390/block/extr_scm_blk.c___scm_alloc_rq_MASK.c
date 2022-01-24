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
struct scm_request {int /*<<< orphan*/  list; void* aidaw; void* aob; } ;
struct aob_rq_header {scalar_t__ data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_DMA ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct scm_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct scm_request*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inactive_requests ; 
 struct aob_rq_header* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void)
{
	struct aob_rq_header *aobrq;
	struct scm_request *scmrq;

	aobrq = FUNC4(sizeof(*aobrq) + sizeof(*scmrq), GFP_KERNEL);
	if (!aobrq)
		return -ENOMEM;

	scmrq = (void *) aobrq->data;
	scmrq->aidaw = (void *) FUNC3(GFP_DMA);
	scmrq->aob = (void *) FUNC3(GFP_DMA);
	if (!scmrq->aob || !scmrq->aidaw) {
		FUNC2(scmrq);
		return -ENOMEM;
	}

	if (FUNC1(scmrq)) {
		FUNC2(scmrq);
		return -ENOMEM;
	}

	FUNC0(&scmrq->list);
	FUNC6(&list_lock);
	FUNC5(&scmrq->list, &inactive_requests);
	FUNC7(&list_lock);

	return 0;
}