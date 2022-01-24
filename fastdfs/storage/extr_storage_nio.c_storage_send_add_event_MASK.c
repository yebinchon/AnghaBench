#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;
struct fast_task_info {TYPE_1__ event; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOEVENT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fast_task_info*) ; 

int FUNC1(struct fast_task_info *pTask)
{
	pTask->offset = 0;

	/* direct send */
	FUNC0(pTask->event.fd, IOEVENT_WRITE, pTask);

	return 0;
}