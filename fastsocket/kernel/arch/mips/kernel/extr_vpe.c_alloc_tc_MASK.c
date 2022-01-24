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
struct tc {int index; int /*<<< orphan*/  list; int /*<<< orphan*/  tc; } ;
struct TYPE_2__ {int /*<<< orphan*/  tc_list_lock; int /*<<< orphan*/  tc_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct tc* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ vpecontrol ; 

__attribute__((used)) static struct tc *FUNC5(int index)
{
	struct tc *tc;

	if ((tc = FUNC1(sizeof(struct tc), GFP_KERNEL)) == NULL)
		goto out;

	FUNC0(&tc->tc);
	tc->index = index;

	FUNC3(&vpecontrol.tc_list_lock);
	FUNC2(&tc->list, &vpecontrol.tc_list);
	FUNC4(&vpecontrol.tc_list_lock);

out:
	return tc;
}