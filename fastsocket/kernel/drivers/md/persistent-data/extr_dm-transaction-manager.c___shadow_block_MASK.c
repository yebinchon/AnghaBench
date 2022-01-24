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
struct dm_transaction_manager {int /*<<< orphan*/  bm; int /*<<< orphan*/  sm; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_block_validator*,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_block*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_block_validator*,struct dm_block**) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dm_transaction_manager *tm, dm_block_t orig,
			  struct dm_block_validator *v,
			  struct dm_block **result)
{
	int r;
	dm_block_t new;
	struct dm_block *orig_block;

	r = FUNC6(tm->sm, &new);
	if (r < 0)
		return r;

	r = FUNC5(tm->sm, orig);
	if (r < 0)
		return r;

	r = FUNC2(tm->bm, orig, v, &orig_block);
	if (r < 0)
		return r;

	/*
	 * It would be tempting to use dm_bm_unlock_move here, but some
	 * code, such as the space maps, keeps using the old data structures
	 * secure in the knowledge they won't be changed until the next
	 * transaction.  Using unlock_move would force a synchronous read
	 * since the old block would no longer be in the cache.
	 */
	r = FUNC4(tm->bm, new, v, result);
	if (r) {
		FUNC3(orig_block);
		return r;
	}

	FUNC7(FUNC0(*result), FUNC0(orig_block),
	       FUNC1(tm->bm));

	FUNC3(orig_block);
	return r;
}