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
struct asic3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct asic3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct asic3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct asic3 *asic, u32 reg, u32 bits, bool set)
{
	unsigned long flags;
	u32 val;

	FUNC2(&asic->lock, flags);
	val = FUNC0(asic, reg);
	if (set)
		val |= bits;
	else
		val &= ~bits;
	FUNC1(asic, reg, val);
	FUNC3(&asic->lock, flags);
}