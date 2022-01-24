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
typedef  scalar_t__ u32 ;
struct c2_pd {scalar_t__ pd_id; } ;
struct TYPE_2__ {scalar_t__ max; scalar_t__ last; int /*<<< orphan*/  lock; int /*<<< orphan*/  table; } ;
struct c2_dev {TYPE_1__ pd_table; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct c2_dev *c2dev, int privileged, struct c2_pd *pd)
{
	u32 obj;
	int ret = 0;

	FUNC3(&c2dev->pd_table.lock);
	obj = FUNC2(c2dev->pd_table.table, c2dev->pd_table.max,
				 c2dev->pd_table.last);
	if (obj >= c2dev->pd_table.max)
		obj = FUNC1(c2dev->pd_table.table,
					  c2dev->pd_table.max);
	if (obj < c2dev->pd_table.max) {
		pd->pd_id = obj;
		FUNC0(obj, c2dev->pd_table.table);
		c2dev->pd_table.last = obj+1;
		if (c2dev->pd_table.last >= c2dev->pd_table.max)
			c2dev->pd_table.last = 0;
	} else
		ret = -ENOMEM;
	FUNC4(&c2dev->pd_table.lock);
	return ret;
}