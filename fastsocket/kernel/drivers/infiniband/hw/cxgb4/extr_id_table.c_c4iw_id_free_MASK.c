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
typedef  scalar_t__ u32 ;
struct c4iw_id_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  table; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct c4iw_id_table *alloc, u32 obj)
{
	unsigned long flags;

	obj -= alloc->start;
	FUNC0((int)obj < 0);

	FUNC2(&alloc->lock, flags);
	FUNC1(obj, alloc->table);
	FUNC3(&alloc->lock, flags);
}