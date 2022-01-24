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
typedef  unsigned long long u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int OCTEON_IRQ_WORKQ0 ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC3(unsigned int irq)
{
	int index = FUNC1() * 2;
	u64 mask = 1ull << (irq - OCTEON_IRQ_WORKQ0);

	FUNC2(FUNC0(index), mask);
}