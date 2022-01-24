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
 unsigned long __MEMORY_START ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  high_memory ; 

int FUNC1(unsigned long addr, size_t count)
{
	if (addr < __MEMORY_START)
		return 0;
	if (addr + count > FUNC0(high_memory))
		return 0;

	return 1;
}