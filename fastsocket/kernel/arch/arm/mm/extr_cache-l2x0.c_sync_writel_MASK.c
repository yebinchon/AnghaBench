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

/* Variables and functions */
 scalar_t__ l2x0_base ; 
 int /*<<< orphan*/  l2x0_lock ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(unsigned long val, unsigned long reg,
			       unsigned long complete_mask)
{
	unsigned long flags;

	FUNC1(&l2x0_lock, flags);
	FUNC3(val, l2x0_base + reg);
	/* wait for the operation to complete */
	while (FUNC0(l2x0_base + reg) & complete_mask)
		;
	FUNC2(&l2x0_lock, flags);
}