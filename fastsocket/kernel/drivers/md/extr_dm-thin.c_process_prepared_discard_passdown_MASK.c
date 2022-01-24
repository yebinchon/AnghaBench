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
struct thin_c {TYPE_1__* pool; } ;
struct dm_thin_new_mapping {int /*<<< orphan*/  bio; int /*<<< orphan*/  data_block; scalar_t__ definitely_not_shared; scalar_t__ pass_discard; int /*<<< orphan*/  cell2; int /*<<< orphan*/  cell; struct thin_c* tc; } ;
struct TYPE_2__ {int /*<<< orphan*/  mapping_pool; int /*<<< orphan*/  pmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thin_c*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_thin_new_mapping*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct thin_c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dm_thin_new_mapping *m)
{
	struct thin_c *tc = m->tc;

	FUNC3(tc->pool, m->bio);
	FUNC1(tc, m->cell);
	FUNC1(tc, m->cell2);

	if (m->pass_discard)
		if (m->definitely_not_shared)
			FUNC5(tc, m->bio, m->data_block);
		else {
			bool used = false;
			if (FUNC2(tc->pool->pmd, m->data_block, &used) || used)
				FUNC0(m->bio, 0);
			else
				FUNC5(tc, m->bio, m->data_block);
		}
	else
		FUNC0(m->bio, 0);

	FUNC4(m, tc->pool->mapping_pool);
}