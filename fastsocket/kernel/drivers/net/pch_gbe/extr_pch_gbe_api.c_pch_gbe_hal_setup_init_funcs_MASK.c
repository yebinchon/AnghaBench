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
struct pch_gbe_hw {int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

inline s32 FUNC2(struct pch_gbe_hw *hw)
{
	if (!hw->reg) {
		FUNC1("ERROR: Registers not mapped\n");
		return -ENOSYS;
	}
	FUNC0(hw);
	return 0;
}