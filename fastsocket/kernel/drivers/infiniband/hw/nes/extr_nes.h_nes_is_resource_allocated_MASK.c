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
typedef  int /*<<< orphan*/  u32 ;
struct nes_adapter {int /*<<< orphan*/  resource_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NES_DBG_HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static inline int FUNC4(struct nes_adapter *nesadapter,
		unsigned long *resource_array, u32 resource_num)
{
	unsigned long flags;
	int bit_is_set;

	FUNC1(&nesadapter->resource_lock, flags);

	bit_is_set = FUNC3(resource_num, resource_array);
	FUNC0(NES_DBG_HW, "resource_num %u is%s allocated.\n",
			resource_num, (bit_is_set ? "": " not"));
	FUNC2(&nesadapter->resource_lock, flags);

	return bit_is_set;
}