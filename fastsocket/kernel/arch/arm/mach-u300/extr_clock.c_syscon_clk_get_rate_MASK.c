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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 scalar_t__ U300_SYSCON_CCR ; 
 int /*<<< orphan*/  U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK ; 
 scalar_t__ U300_SYSCON_VBASE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  syscon_clkreg_lock ; 

__attribute__((used)) static u16 FUNC3(void)
{
	u16 val;
	unsigned long iflags;

	FUNC1(&syscon_clkreg_lock, iflags);
	val = FUNC0(U300_SYSCON_VBASE + U300_SYSCON_CCR);
	val &= U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK;
	FUNC2(&syscon_clkreg_lock, iflags);
	return val;
}