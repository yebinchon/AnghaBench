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
typedef  int u32 ;
struct mthca_alloc {int max; int mask; int /*<<< orphan*/  table; int /*<<< orphan*/  lock; scalar_t__ top; scalar_t__ last; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct mthca_alloc *alloc, u32 num, u32 mask,
		     u32 reserved)
{
	int i;

	/* num must be a power of 2 */
	if (num != 1 << (FUNC2(num) - 1))
		return -EINVAL;

	alloc->last = 0;
	alloc->top  = 0;
	alloc->max  = num;
	alloc->mask = mask;
	FUNC5(&alloc->lock);
	alloc->table = FUNC3(FUNC0(num) * sizeof (long),
			       GFP_KERNEL);
	if (!alloc->table)
		return -ENOMEM;

	FUNC1(alloc->table, num);
	for (i = 0; i < reserved; ++i)
		FUNC4(i, alloc->table);

	return 0;
}