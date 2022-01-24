#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  next; } ;
struct TYPE_5__ {int /*<<< orphan*/  queue_lock; TYPE_3__ head; } ;
typedef  TYPE_1__ Queue_t ;

/* Variables and functions */
 struct scsi_cmnd* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

struct scsi_cmnd *FUNC4(Queue_t *queue)
{
	unsigned long flags;
	struct scsi_cmnd *SCpnt = NULL;

	FUNC2(&queue->queue_lock, flags);
	if (!FUNC1(&queue->head))
		SCpnt = FUNC0(queue, queue->head.next);
	FUNC3(&queue->queue_lock, flags);

	return SCpnt;
}