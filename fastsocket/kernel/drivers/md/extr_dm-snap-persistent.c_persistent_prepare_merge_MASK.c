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
struct pstore {int current_committed; int exceptions_per_area; int /*<<< orphan*/  current_area; } ;
struct dm_exception_store {int dummy; } ;
struct core_exception {int old_chunk; int new_chunk; } ;
typedef  int chunk_t ;

/* Variables and functions */
 int /*<<< orphan*/  READ ; 
 int FUNC0 (struct pstore*,int /*<<< orphan*/ ) ; 
 struct pstore* FUNC1 (struct dm_exception_store*) ; 
 int /*<<< orphan*/  FUNC2 (struct pstore*,int,struct core_exception*) ; 

__attribute__((used)) static int FUNC3(struct dm_exception_store *store,
				    chunk_t *last_old_chunk,
				    chunk_t *last_new_chunk)
{
	struct pstore *ps = FUNC1(store);
	struct core_exception ce;
	int nr_consecutive;
	int r;

	/*
	 * When current area is empty, move back to preceding area.
	 */
	if (!ps->current_committed) {
		/*
		 * Have we finished?
		 */
		if (!ps->current_area)
			return 0;

		ps->current_area--;
		r = FUNC0(ps, READ);
		if (r < 0)
			return r;
		ps->current_committed = ps->exceptions_per_area;
	}

	FUNC2(ps, ps->current_committed - 1, &ce);
	*last_old_chunk = ce.old_chunk;
	*last_new_chunk = ce.new_chunk;

	/*
	 * Find number of consecutive chunks within the current area,
	 * working backwards.
	 */
	for (nr_consecutive = 1; nr_consecutive < ps->current_committed;
	     nr_consecutive++) {
		FUNC2(ps, ps->current_committed - 1 - nr_consecutive,
			       &ce);
		if (ce.old_chunk != *last_old_chunk - nr_consecutive ||
		    ce.new_chunk != *last_new_chunk - nr_consecutive)
			break;
	}

	return nr_consecutive;
}