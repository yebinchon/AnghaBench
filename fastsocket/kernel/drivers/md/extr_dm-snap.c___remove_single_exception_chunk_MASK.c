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
struct dm_snapshot {int /*<<< orphan*/  complete; } ;
struct dm_exception {scalar_t__ old_chunk; int /*<<< orphan*/  new_chunk; } ;
typedef  scalar_t__ chunk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,...) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct dm_exception*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_exception*) ; 
 struct dm_exception* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_exception*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_exception*) ; 

__attribute__((used)) static int FUNC6(struct dm_snapshot *s,
					   chunk_t old_chunk)
{
	struct dm_exception *e;

	e = FUNC3(&s->complete, old_chunk);
	if (!e) {
		FUNC0("Corruption detected: exception for block %llu is "
		      "on disk but not in memory",
		      (unsigned long long)old_chunk);
		return -EINVAL;
	}

	/*
	 * If this is the only chunk using this exception, remove exception.
	 */
	if (!FUNC1(e)) {
		FUNC4(e);
		FUNC5(e);
		return 0;
	}

	/*
	 * The chunk may be either at the beginning or the end of a
	 * group of consecutive chunks - never in the middle.  We are
	 * removing chunks in the opposite order to that in which they
	 * were added, so this should always be true.
	 * Decrement the consecutive chunk counter and adjust the
	 * starting point if necessary.
	 */
	if (old_chunk == e->old_chunk) {
		e->old_chunk++;
		e->new_chunk++;
	} else if (old_chunk != e->old_chunk +
		   FUNC1(e)) {
		FUNC0("Attempt to merge block %llu from the "
		      "middle of a chunk range [%llu - %llu]",
		      (unsigned long long)old_chunk,
		      (unsigned long long)e->old_chunk,
		      (unsigned long long)
		      e->old_chunk + FUNC1(e));
		return -EINVAL;
	}

	FUNC2(e);

	return 0;
}