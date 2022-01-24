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
struct c2_pd {int /*<<< orphan*/  pd_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  table; } ;
struct c2_dev {TYPE_1__ pd_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct c2_dev *c2dev, struct c2_pd *pd)
{
	FUNC1(&c2dev->pd_table.lock);
	FUNC0(pd->pd_id, c2dev->pd_table.table);
	FUNC2(&c2dev->pd_table.lock);
}