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
struct request_queue {int dummy; } ;
struct queue_limits {int dummy; } ;
struct mapped_device {int /*<<< orphan*/  map_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  immutable_target_type; struct dm_table* map; int /*<<< orphan*/  geometry; int /*<<< orphan*/  disk; struct request_queue* queue; } ;
struct dm_table {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_MERGE_IS_OPTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct mapped_device*,struct dm_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct mapped_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_table*,int /*<<< orphan*/ ,struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_table*) ; 
 scalar_t__ FUNC6 (struct dm_table*) ; 
 int FUNC7 (struct dm_table*) ; 
 scalar_t__ FUNC8 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_table*,struct request_queue*,struct queue_limits*) ; 
 int /*<<< orphan*/  event_callback ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dm_table *FUNC16(struct mapped_device *md, struct dm_table *t,
			       struct queue_limits *limits)
{
	struct dm_table *old_map;
	struct request_queue *q = md->queue;
	sector_t size;
	unsigned long flags;
	int merge_is_optional;

	size = FUNC6(t);

	/*
	 * Wipe any geometry if the size of the table changed.
	 */
	if (size != FUNC10(md->disk))
		FUNC11(&md->geometry, 0, sizeof(md->geometry));

	FUNC1(md, size);

	FUNC4(t, event_callback, md);

	/*
	 * The queue hasn't been stopped yet, if the old table type wasn't
	 * for request-based during suspension.  So stop it to prevent
	 * I/O mapping before resume.
	 * This must be done before setting the queue restrictions,
	 * because request-based dm may be run just after the setting.
	 */
	if (FUNC8(t) && !FUNC2(q))
		FUNC13(q);

	FUNC0(md, t);

	merge_is_optional = FUNC7(t);

	FUNC14(&md->map_lock, flags);
	old_map = md->map;
	md->map = t;
	md->immutable_target_type = FUNC5(t);

	FUNC9(t, q, limits);
	if (merge_is_optional)
		FUNC12(DMF_MERGE_IS_OPTIONAL, &md->flags);
	else
		FUNC3(DMF_MERGE_IS_OPTIONAL, &md->flags);
	FUNC15(&md->map_lock, flags);

	return old_map;
}