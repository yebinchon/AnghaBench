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
struct request_queue {scalar_t__ elevator; } ;
struct mapped_device {struct request_queue* queue; } ;

/* Variables and functions */
 struct request_queue* FUNC0 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mapped_device*) ; 
 int /*<<< orphan*/  dm_lld_busy ; 
 int /*<<< orphan*/  dm_prep_fn ; 
 int /*<<< orphan*/  dm_request_fn ; 
 int /*<<< orphan*/  dm_softirq_done ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*) ; 

__attribute__((used)) static int FUNC6(struct mapped_device *md)
{
	struct request_queue *q = NULL;

	if (md->queue->elevator)
		return 1;

	/* Fully initialize the queue */
	q = FUNC0(md->queue, dm_request_fn, NULL);
	if (!q)
		return 0;

	md->queue = q;
	FUNC4(md);
	FUNC3(md->queue, dm_softirq_done);
	FUNC2(md->queue, dm_prep_fn);
	FUNC1(md->queue, dm_lld_busy);

	FUNC5(md->queue);

	return 1;
}