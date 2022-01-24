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
struct c4iw_id_table {int start; int flags; int last; int max; int /*<<< orphan*/  table; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int C4IW_ID_TABLE_F_EMPTY ; 
 int C4IW_ID_TABLE_F_RANDOM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RANDOM_SKIP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct c4iw_id_table *alloc, u32 start, u32 num,
			u32 reserved, u32 flags)
{
	int i;

	alloc->start = start;
	alloc->flags = flags;
	if (flags & C4IW_ID_TABLE_F_RANDOM)
		alloc->last = FUNC3() % RANDOM_SKIP;
	else
		alloc->last = 0;
	alloc->max  = num;
	FUNC5(&alloc->lock);
	alloc->table = FUNC2(FUNC0(num) * sizeof(long),
				GFP_KERNEL);
	if (!alloc->table)
		return -ENOMEM;

	FUNC1(alloc->table, num);
	if (!(alloc->flags & C4IW_ID_TABLE_F_EMPTY))
		for (i = 0; i < reserved; ++i)
			FUNC4(i, alloc->table);

	return 0;
}