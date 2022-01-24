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
struct dm_snapshot {int /*<<< orphan*/  tracked_chunk_lock; int /*<<< orphan*/ * tracked_chunk_hash; int /*<<< orphan*/  tracked_chunk_pool; } ;
struct dm_snap_tracked_chunk {int /*<<< orphan*/  node; int /*<<< orphan*/  chunk; } ;
typedef  int /*<<< orphan*/  chunk_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dm_snap_tracked_chunk* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dm_snap_tracked_chunk *FUNC5(struct dm_snapshot *s,
						 chunk_t chunk)
{
	struct dm_snap_tracked_chunk *c = FUNC2(s->tracked_chunk_pool,
							GFP_NOIO);

	c->chunk = chunk;

	FUNC3(&s->tracked_chunk_lock);
	FUNC1(&c->node,
		       &s->tracked_chunk_hash[FUNC0(chunk)]);
	FUNC4(&s->tracked_chunk_lock);

	return c;
}