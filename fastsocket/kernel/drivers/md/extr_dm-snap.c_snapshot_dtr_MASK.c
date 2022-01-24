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
struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {int /*<<< orphan*/  origin; int /*<<< orphan*/  cow; int /*<<< orphan*/  store; int /*<<< orphan*/  pending_pool; int /*<<< orphan*/  tracked_chunk_pool; int /*<<< orphan*/ * tracked_chunk_hash; int /*<<< orphan*/  pending_exceptions_count; int /*<<< orphan*/  lock; scalar_t__ valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DM_TRACKED_CHUNK_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct dm_snapshot*,struct dm_snapshot**,struct dm_snapshot**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  _origins_lock ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_target*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct dm_target*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC16 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct dm_target *ti)
{
#ifdef CONFIG_DM_DEBUG
	int i;
#endif
	struct dm_snapshot *s = ti->private;
	struct dm_snapshot *snap_src = NULL, *snap_dest = NULL;

	FUNC8(&_origins_lock);
	/* Check whether exception handover must be cancelled */
	(void) FUNC2(s, &snap_src, &snap_dest, NULL);
	if (snap_src && snap_dest && (s == snap_src)) {
		FUNC9(&snap_dest->lock);
		snap_dest->valid = 0;
		FUNC18(&snap_dest->lock);
		FUNC1("Cancelling snapshot handover.");
	}
	FUNC17(&_origins_lock);

	if (FUNC7(ti))
		FUNC15(s);

	/* Prevent further origin writes from using this snapshot. */
	/* After this returns there can be no new kcopyd jobs. */
	FUNC16(s);

	while (FUNC4(&s->pending_exceptions_count))
		FUNC13(1);
	/*
	 * Ensure instructions in mempool_destroy aren't reordered
	 * before atomic_read.
	 */
	FUNC14();

#ifdef CONFIG_DM_DEBUG
	for (i = 0; i < DM_TRACKED_CHUNK_HASH_SIZE; i++)
		BUG_ON(!hlist_empty(&s->tracked_chunk_hash[i]));
#endif

	FUNC12(s->tracked_chunk_pool);

	FUNC3(s);

	FUNC12(s->pending_pool);

	FUNC5(s->store);

	FUNC6(ti, s->cow);

	FUNC6(ti, s->origin);

	FUNC11(s);
}