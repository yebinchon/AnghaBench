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
 int /*<<< orphan*/  FUNC0 (long const,unsigned long) ; 

void FUNC1(unsigned long addr, const void *src, unsigned long count)
{
	while (count) {
		count -= 4;
		FUNC0(*(const long *)src, addr);
		src += 4;
		/* addr += 4; */
	}
}