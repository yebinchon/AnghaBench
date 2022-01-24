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
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(unsigned long base, unsigned long size)
{
	if ((base & (PAGE_SIZE - 1)) || (size & (PAGE_SIZE - 1))) {
		FUNC2("mtrr: size and base must be multiples of 4 kiB\n");
		FUNC1("mtrr: size: 0x%lx  base: 0x%lx\n", size, base);
		FUNC0();
		return -1;
	}
	return 0;
}