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
struct dm_snapshot {int active; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (struct dm_snapshot*,struct dm_snapshot**,struct dm_snapshot**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_snapshot*,struct dm_snapshot*) ; 
 int /*<<< orphan*/  _origins_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct dm_target *ti)
{
	struct dm_snapshot *s = ti->private;
	struct dm_snapshot *snap_src = NULL, *snap_dest = NULL;

	FUNC2(&_origins_lock);
	(void) FUNC0(s, &snap_src, &snap_dest, NULL);
	if (snap_src && snap_dest) {
		FUNC3(&snap_src->lock);
		FUNC4(&snap_dest->lock, SINGLE_DEPTH_NESTING);
		FUNC1(snap_src, snap_dest);
		FUNC7(&snap_dest->lock);
		FUNC7(&snap_src->lock);
	}
	FUNC6(&_origins_lock);

	/* Now we have correct chunk size, reregister */
	FUNC5(s);

	FUNC3(&s->lock);
	s->active = 1;
	FUNC7(&s->lock);
}