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
struct vpe {int minor; int /*<<< orphan*/  notify; int /*<<< orphan*/  list; int /*<<< orphan*/  tc; } ;
struct TYPE_2__ {int /*<<< orphan*/  vpe_list_lock; int /*<<< orphan*/  vpe_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vpe* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ vpecontrol ; 

__attribute__((used)) static struct vpe *FUNC5(int minor)
{
	struct vpe *v;

	if ((v = FUNC1(sizeof(struct vpe), GFP_KERNEL)) == NULL)
		return NULL;

	FUNC0(&v->tc);
	FUNC3(&vpecontrol.vpe_list_lock);
	FUNC2(&v->list, &vpecontrol.vpe_list);
	FUNC4(&vpecontrol.vpe_list_lock);

	FUNC0(&v->notify);
	v->minor = minor;

	return v;
}