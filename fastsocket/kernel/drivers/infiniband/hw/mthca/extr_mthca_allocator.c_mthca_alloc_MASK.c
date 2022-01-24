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
struct mthca_alloc {int max; int top; int mask; int /*<<< orphan*/  lock; int /*<<< orphan*/  table; int /*<<< orphan*/  last; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

u32 FUNC5(struct mthca_alloc *alloc)
{
	unsigned long flags;
	u32 obj;

	FUNC3(&alloc->lock, flags);

	obj = FUNC1(alloc->table, alloc->max, alloc->last);
	if (obj >= alloc->max) {
		alloc->top = (alloc->top + alloc->max) & alloc->mask;
		obj = FUNC0(alloc->table, alloc->max);
	}

	if (obj < alloc->max) {
		FUNC2(obj, alloc->table);
		obj |= alloc->top;
	} else
		obj = -1;

	FUNC4(&alloc->lock, flags);

	return obj;
}