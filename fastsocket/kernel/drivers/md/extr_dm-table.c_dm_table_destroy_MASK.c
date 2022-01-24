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
struct dm_target {TYPE_1__* type; } ;
struct dm_table {int depth; unsigned int num_targets; int /*<<< orphan*/  mempools; int /*<<< orphan*/  devices; int /*<<< orphan*/  highs; struct dm_target* targets; int /*<<< orphan*/ * index; int /*<<< orphan*/  holders; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dtr ) (struct dm_target*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct dm_target*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct dm_table *t)
{
	unsigned int i;

	if (!t)
		return;

	while (FUNC0(&t->holders))
		FUNC5(1);
	FUNC6();

	/* free the indexes */
	if (t->depth >= 2)
		FUNC8(t->index[t->depth - 2]);

	/* free the targets */
	for (i = 0; i < t->num_targets; i++) {
		struct dm_target *tgt = t->targets + i;

		if (tgt->type->dtr)
			tgt->type->dtr(tgt);

		FUNC2(tgt->type);
	}

	FUNC8(t->highs);

	/* free the device list */
	FUNC3(&t->devices);

	FUNC1(t->mempools);

	FUNC4(t);
}