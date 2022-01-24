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
struct dm_transaction_manager {int /*<<< orphan*/  bm; int /*<<< orphan*/  sm; scalar_t__ is_clone; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int FUNC0 (struct dm_transaction_manager*,int /*<<< orphan*/ ,struct dm_block_validator*,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_block*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_block_validator*,struct dm_block**) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_transaction_manager*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct dm_transaction_manager*,int /*<<< orphan*/ ) ; 

int FUNC6(struct dm_transaction_manager *tm, dm_block_t orig,
		       struct dm_block_validator *v, struct dm_block **result,
		       int *inc_children)
{
	int r;

	if (tm->is_clone)
		return -EWOULDBLOCK;

	r = FUNC3(tm->sm, orig, inc_children);
	if (r < 0)
		return r;

	if (FUNC5(tm, orig) && !*inc_children)
		return FUNC2(tm->bm, orig, v, result);

	r = FUNC0(tm, orig, v, result);
	if (r < 0)
		return r;
	FUNC4(tm, FUNC1(*result));

	return r;
}