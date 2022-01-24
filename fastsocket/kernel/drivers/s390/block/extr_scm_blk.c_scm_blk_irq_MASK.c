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
struct scm_request {int error; int /*<<< orphan*/  list; struct scm_blk_dev* bdev; } ;
struct scm_device {int dummy; } ;
struct scm_blk_dev {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  lock; int /*<<< orphan*/  finished_requests; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scm_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct scm_device *scmdev, void *data, int error)
{
	struct scm_request *scmrq = data;
	struct scm_blk_dev *bdev = scmrq->bdev;

	scmrq->error = error;
	if (error)
		FUNC0(scmrq);

	FUNC2(&bdev->lock);
	FUNC1(&scmrq->list, &bdev->finished_requests);
	FUNC3(&bdev->lock);
	FUNC4(&bdev->tasklet);
}