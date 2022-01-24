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
struct pstore {scalar_t__ current_committed; unsigned int callback_count; scalar_t__ exceptions_per_area; int valid; struct commit_callback* callbacks; scalar_t__ current_area; int /*<<< orphan*/  pending_count; } ;
struct dm_exception_store {int dummy; } ;
struct dm_exception {int /*<<< orphan*/  new_chunk; int /*<<< orphan*/  old_chunk; } ;
struct core_exception {int /*<<< orphan*/  new_chunk; int /*<<< orphan*/  old_chunk; } ;
struct commit_callback {void (* callback ) (void*,int) ;void* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  WRITE_FLUSH_FUA ; 
 scalar_t__ FUNC0 (struct pstore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pstore* FUNC2 (struct dm_exception_store*) ; 
 void FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pstore*,int /*<<< orphan*/ ,struct core_exception*) ; 
 scalar_t__ FUNC5 (struct pstore*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct pstore*) ; 

__attribute__((used)) static void FUNC7(struct dm_exception_store *store,
					struct dm_exception *e,
					void (*callback) (void *, int success),
					void *callback_context)
{
	unsigned int i;
	struct pstore *ps = FUNC2(store);
	struct core_exception ce;
	struct commit_callback *cb;

	ce.old_chunk = e->old_chunk;
	ce.new_chunk = e->new_chunk;
	FUNC4(ps, ps->current_committed++, &ce);

	/*
	 * Add the callback to the back of the array.  This code
	 * is the only place where the callback array is
	 * manipulated, and we know that it will never be called
	 * multiple times concurrently.
	 */
	cb = ps->callbacks + ps->callback_count++;
	cb->callback = callback;
	cb->context = callback_context;

	/*
	 * If there are exceptions in flight and we have not yet
	 * filled this metadata area there's nothing more to do.
	 */
	if (!FUNC1(&ps->pending_count) &&
	    (ps->current_committed != ps->exceptions_per_area))
		return;

	/*
	 * If we completely filled the current area, then wipe the next one.
	 */
	if ((ps->current_committed == ps->exceptions_per_area) &&
	    FUNC5(ps, ps->current_area + 1))
		ps->valid = 0;

	/*
	 * Commit exceptions to disk.
	 */
	if (ps->valid && FUNC0(ps, WRITE_FLUSH_FUA))
		ps->valid = 0;

	/*
	 * Advance to the next area if this one is full.
	 */
	if (ps->current_committed == ps->exceptions_per_area) {
		ps->current_committed = 0;
		ps->current_area++;
		FUNC6(ps);
	}

	for (i = 0; i < ps->callback_count; i++) {
		cb = ps->callbacks + i;
		cb->callback(cb->context, ps->valid);
	}

	ps->callback_count = 0;
}