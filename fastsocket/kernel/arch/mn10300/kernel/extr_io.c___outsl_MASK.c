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
 int /*<<< orphan*/  FUNC0 (unsigned long*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

void FUNC2(unsigned long addr, const void *buffer, int count)
{
	const unsigned char *buf = buffer;
	unsigned long val;

	while (count--) {
		FUNC0(&val, buf, 4);
		FUNC1(val, addr);
		buf += 4;
	}
}