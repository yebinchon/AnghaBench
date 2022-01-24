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
struct b3dfg_dev {unsigned long cstate_tstamp; int /*<<< orphan*/  cstate_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC2(struct b3dfg_dev *fgdev)
{
	unsigned long flags, when;

	FUNC0(&fgdev->cstate_lock, flags);
	when = fgdev->cstate_tstamp;
	FUNC1(&fgdev->cstate_lock, flags);
	return when;
}