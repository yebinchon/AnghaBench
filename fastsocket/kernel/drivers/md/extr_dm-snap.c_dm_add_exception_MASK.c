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
struct dm_exception {void* new_chunk; void* old_chunk; } ;
typedef  void* chunk_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct dm_exception* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct dm_exception*) ; 

__attribute__((used)) static int FUNC2(void *context, chunk_t old, chunk_t new)
{
	struct dm_snapshot *s = context;
	struct dm_exception *e;

	e = FUNC0();
	if (!e)
		return -ENOMEM;

	e->old_chunk = old;

	/* Consecutive_count is implicitly initialised to zero */
	e->new_chunk = new;

	FUNC1(&s->complete, e);

	return 0;
}