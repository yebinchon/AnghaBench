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
struct dm_snapshot {scalar_t__ first_merging_chunk; scalar_t__ num_merging_chunks; int /*<<< orphan*/  lock; } ;
struct bio {int dummy; } ;
typedef  scalar_t__ chunk_t ;

/* Variables and functions */
 struct bio* FUNC0 (struct dm_snapshot*) ; 
 int FUNC1 (struct dm_snapshot*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dm_snapshot *s)
{
	struct bio *b = NULL;
	int r;
	chunk_t old_chunk = s->first_merging_chunk + s->num_merging_chunks - 1;

	FUNC2(&s->lock);

	/*
	 * Process chunks (and associated exceptions) in reverse order
	 * so that dm_consecutive_chunk_count_dec() accounting works.
	 */
	do {
		r = FUNC1(s, old_chunk);
		if (r)
			goto out;
	} while (old_chunk-- > s->first_merging_chunk);

	b = FUNC0(s);

out:
	FUNC4(&s->lock);
	if (b)
		FUNC3(b);

	return r;
}