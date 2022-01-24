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
struct dm_snapshot {int /*<<< orphan*/  tracked_chunk_pool; int /*<<< orphan*/  tracked_chunk_lock; } ;
struct dm_snap_tracked_chunk {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_snap_tracked_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct dm_snapshot *s,
				struct dm_snap_tracked_chunk *c)
{
	unsigned long flags;

	FUNC2(&s->tracked_chunk_lock, flags);
	FUNC0(&c->node);
	FUNC3(&s->tracked_chunk_lock, flags);

	FUNC1(c, s->tracked_chunk_pool);
}