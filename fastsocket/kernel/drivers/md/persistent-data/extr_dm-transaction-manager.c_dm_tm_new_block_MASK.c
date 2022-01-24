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
struct dm_transaction_manager {int /*<<< orphan*/  sm; int /*<<< orphan*/  bm; scalar_t__ is_clone; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_block_validator*,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_transaction_manager*,int /*<<< orphan*/ ) ; 

int FUNC4(struct dm_transaction_manager *tm,
		    struct dm_block_validator *v,
		    struct dm_block **result)
{
	int r;
	dm_block_t new_block;

	if (tm->is_clone)
		return -EWOULDBLOCK;

	r = FUNC2(tm->sm, &new_block);
	if (r < 0)
		return r;

	r = FUNC0(tm->bm, new_block, v, result);
	if (r < 0) {
		FUNC1(tm->sm, new_block);
		return r;
	}

	/*
	 * New blocks count as shadows in that they don't need to be
	 * shadowed again.
	 */
	FUNC3(tm, new_block);

	return 0;
}