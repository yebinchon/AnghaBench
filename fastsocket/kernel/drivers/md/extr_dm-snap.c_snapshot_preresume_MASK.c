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
struct dm_snapshot {int /*<<< orphan*/  lock; int /*<<< orphan*/  ti; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct dm_snapshot*,struct dm_snapshot**,struct dm_snapshot**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _origins_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dm_target *ti)
{
	int r = 0;
	struct dm_snapshot *s = ti->private;
	struct dm_snapshot *snap_src = NULL, *snap_dest = NULL;

	FUNC3(&_origins_lock);
	(void) FUNC1(s, &snap_src, &snap_dest, NULL);
	if (snap_src && snap_dest) {
		FUNC3(&snap_src->lock);
		if (s == snap_src) {
			FUNC0("Unable to resume snapshot source until "
			      "handover completes.");
			r = -EINVAL;
		} else if (!FUNC2(snap_src->ti)) {
			FUNC0("Unable to perform snapshot handover until "
			      "source is suspended.");
			r = -EINVAL;
		}
		FUNC4(&snap_src->lock);
	}
	FUNC4(&_origins_lock);

	return r;
}