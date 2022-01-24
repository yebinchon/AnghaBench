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
struct scm_blk_dev {int /*<<< orphan*/  rq; int /*<<< orphan*/  queued_reqs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct scm_blk_dev *bdev)
{
	if (FUNC0(&bdev->queued_reqs)) {
		/* Queue restart is triggered by the next interrupt. */
		return;
	}
	/* Rely on the unplug timer to kick us again. */
	FUNC1(bdev->rq);
}