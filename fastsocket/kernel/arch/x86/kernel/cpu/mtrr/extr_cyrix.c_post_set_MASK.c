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
 int /*<<< orphan*/  CX86_CCR3 ; 
 int /*<<< orphan*/  ccr3 ; 
 scalar_t__ cpu_has_pge ; 
 int /*<<< orphan*/  cr4 ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	/* Flush caches and TLBs */
	FUNC2();

	/* Cyrix ARRs - everything else was excluded at the top */
	FUNC1(CX86_CCR3, ccr3);

	/* Enable caches */
	FUNC3(FUNC0() & 0xbfffffff);

	/* Restore value of CR4 */
	if (cpu_has_pge)
		FUNC4(cr4);
}