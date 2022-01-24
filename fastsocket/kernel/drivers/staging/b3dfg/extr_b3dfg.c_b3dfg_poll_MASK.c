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
struct file {struct b3dfg_dev* private_data; } ;
struct b3dfg_dev {int /*<<< orphan*/  transmission_enabled; int /*<<< orphan*/  buffer_lock; TYPE_1__* buffers; int /*<<< orphan*/  buffer_waitqueue; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ B3DFG_BUFFER_POPULATED ; 
 int POLLERR ; 
 int POLLIN ; 
 int POLLRDNORM ; 
 int b3dfg_nbuf ; 
 unsigned long FUNC0 (struct b3dfg_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *filp, poll_table *poll_table)
{
	struct b3dfg_dev *fgdev = filp->private_data;
	unsigned long flags, when;
	int i;
	int r = 0;

	when = FUNC0(fgdev);
	FUNC1(filp, &fgdev->buffer_waitqueue, poll_table);

	FUNC2(&fgdev->buffer_lock, flags);
	for (i = 0; i < b3dfg_nbuf; i++) {
		if (fgdev->buffers[i].state == B3DFG_BUFFER_POPULATED) {
			r = POLLIN | POLLRDNORM;
			break;
		}
	}
	FUNC3(&fgdev->buffer_lock, flags);

	/* TODO: Confirm this is how we want to communicate the change. */
	if (!fgdev->transmission_enabled || when != FUNC0(fgdev))
		r = POLLERR;

	return r;
}