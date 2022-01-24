#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct request {int dummy; } ;
struct TYPE_3__ {struct request_queue* queue; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC5(ide_drive_t *drive, struct request *rq)
{
	struct request_queue *q = drive->queue;
	unsigned long flags;

	FUNC3(q->queue_lock, flags);

	if (rq)
		FUNC1(q, rq);
	if (!FUNC2(q))
		FUNC0(q);

	FUNC4(q->queue_lock, flags);
}