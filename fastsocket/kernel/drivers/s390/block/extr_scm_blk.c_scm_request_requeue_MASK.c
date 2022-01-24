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
struct scm_request {int /*<<< orphan*/  request; struct scm_blk_dev* bdev; } ;
struct scm_blk_dev {int /*<<< orphan*/  queued_reqs; int /*<<< orphan*/  rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scm_blk_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct scm_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct scm_request*) ; 

void FUNC5(struct scm_request *scmrq)
{
	struct scm_blk_dev *bdev = scmrq->bdev;

	FUNC3(scmrq);
	FUNC1(bdev->rq, scmrq->request);
	FUNC0(&bdev->queued_reqs);
	FUNC4(scmrq);
	FUNC2(bdev);
}