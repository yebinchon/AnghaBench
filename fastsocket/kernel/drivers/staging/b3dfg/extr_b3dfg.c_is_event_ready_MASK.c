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
struct b3dfg_dev {unsigned long cstate_tstamp; int /*<<< orphan*/  buffer_lock; int /*<<< orphan*/  cstate_lock; int /*<<< orphan*/  transmission_enabled; } ;
struct b3dfg_buffer {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ B3DFG_BUFFER_POPULATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct b3dfg_dev *fgdev, struct b3dfg_buffer *buf,
			  unsigned long when)
{
	int result;
	unsigned long flags;

	FUNC1(&fgdev->buffer_lock, flags);
	FUNC0(&fgdev->cstate_lock);
	result = (!fgdev->transmission_enabled ||
		  buf->state == B3DFG_BUFFER_POPULATED ||
		  when != fgdev->cstate_tstamp);
	FUNC2(&fgdev->cstate_lock);
	FUNC3(&fgdev->buffer_lock, flags);

	return result;
}