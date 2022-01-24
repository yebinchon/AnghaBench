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
struct pstore {int current_committed; int /*<<< orphan*/  current_area; scalar_t__ next_free; } ;
struct dm_exception_store {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WRITE_FLUSH_FUA ; 
 int FUNC1 (struct pstore*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pstore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pstore*,int) ; 
 struct pstore* FUNC4 (struct dm_exception_store*) ; 

__attribute__((used)) static int FUNC5(struct dm_exception_store *store,
				   int nr_merged)
{
	int r, i;
	struct pstore *ps = FUNC4(store);

	FUNC0(nr_merged > ps->current_committed);

	for (i = 0; i < nr_merged; i++)
		FUNC3(ps, ps->current_committed - 1 - i);

	r = FUNC1(ps, WRITE_FLUSH_FUA);
	if (r < 0)
		return r;

	ps->current_committed -= nr_merged;

	/*
	 * At this stage, only persistent_usage() uses ps->next_free, so
	 * we make no attempt to keep ps->next_free strictly accurate
	 * as exceptions may have been committed out-of-order originally.
	 * Once a snapshot has become merging, we set it to the value it
	 * would have held had all the exceptions been committed in order.
	 *
	 * ps->current_area does not get reduced by prepare_merge() until
	 * after commit_merge() has removed the nr_merged previous exceptions.
	 */
	ps->next_free = FUNC2(ps, ps->current_area) +
			ps->current_committed + 1;

	return 0;
}