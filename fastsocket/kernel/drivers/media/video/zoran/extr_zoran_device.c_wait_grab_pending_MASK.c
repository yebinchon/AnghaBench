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
struct zoran {scalar_t__ v4l_pend_tail; scalar_t__ v4l_pend_head; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  v4l_capq; int /*<<< orphan*/  v4l_memgrab_active; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct zoran*,int /*<<< orphan*/ ) ; 

int
FUNC5 (struct zoran *zr)
{
	unsigned long flags;

	/* wait until all pending grabs are finished */

	if (!zr->v4l_memgrab_active)
		return 0;

	FUNC3(zr->v4l_capq,
			(zr->v4l_pend_tail == zr->v4l_pend_head));
	if (FUNC0(current))
		return -ERESTARTSYS;

	FUNC1(&zr->spinlock, flags);
	FUNC4(zr, 0);
	FUNC2(&zr->spinlock, flags);

	return 0;
}