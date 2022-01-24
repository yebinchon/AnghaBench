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
typedef  int uint32_t ;
struct hlist_head {int dummy; } ;
struct dm_bio_prison {int nr_buckets; int hash_mask; struct hlist_head* cells; int /*<<< orphan*/  cell_pool; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hlist_head*) ; 
 int /*<<< orphan*/  _cell_cache ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_bio_prison*) ; 
 struct dm_bio_prison* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct dm_bio_prison *FUNC6(unsigned nr_cells)
{
	unsigned i;
	uint32_t nr_buckets = FUNC1(nr_cells);
	size_t len = sizeof(struct dm_bio_prison) +
		(sizeof(struct hlist_head) * nr_buckets);
	struct dm_bio_prison *prison = FUNC3(len, GFP_KERNEL);

	if (!prison)
		return NULL;

	FUNC5(&prison->lock);
	prison->cell_pool = FUNC4(nr_cells, _cell_cache);
	if (!prison->cell_pool) {
		FUNC2(prison);
		return NULL;
	}

	prison->nr_buckets = nr_buckets;
	prison->hash_mask = nr_buckets - 1;
	prison->cells = (struct hlist_head *) (prison + 1);
	for (i = 0; i < nr_buckets; i++)
		FUNC0(prison->cells + i);

	return prison;
}