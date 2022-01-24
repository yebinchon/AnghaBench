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
struct vt_event_wait {int /*<<< orphan*/  list; scalar_t__ done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vt_event_lock ; 
 int /*<<< orphan*/  vt_event_waitqueue ; 
 int /*<<< orphan*/  vt_events ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct vt_event_wait *vw)
{
	unsigned long flags;
	/* Prepare the event */
	FUNC0(&vw->list);
	vw->done = 0;
	/* Queue our event */
	FUNC3(&vt_event_lock, flags);
	FUNC1(&vw->list, &vt_events);
	FUNC4(&vt_event_lock, flags);
	/* Wait for it to pass */
	FUNC5(vt_event_waitqueue, vw->done);
	/* Dequeue it */
	FUNC3(&vt_event_lock, flags);
	FUNC2(&vw->list);
	FUNC4(&vt_event_lock, flags);
}