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
 int /*<<< orphan*/  Hit_Writeback_Inv_SD ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC2 () ; 

__attribute__((used)) static void FUNC3(unsigned long addr, unsigned long size)
{
	unsigned long lsize = FUNC2();
	unsigned long almask = ~(lsize - 1);

	FUNC1(Hit_Writeback_Inv_SD, addr & almask);
	FUNC1(Hit_Writeback_Inv_SD, (addr + size - 1) & almask);
	FUNC0(addr, addr + size);
}