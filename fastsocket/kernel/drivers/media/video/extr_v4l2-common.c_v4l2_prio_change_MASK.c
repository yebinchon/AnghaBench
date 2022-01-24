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
struct v4l2_prio_state {int /*<<< orphan*/ * prios; } ;
typedef  enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct v4l2_prio_state *global, enum v4l2_priority *local,
		     enum v4l2_priority new)
{
	if (!FUNC0(new))
		return -EINVAL;
	if (*local == new)
		return 0;

	FUNC2(&global->prios[new]);
	if (FUNC0(*local))
		FUNC1(&global->prios[*local]);
	*local = new;
	return 0;
}