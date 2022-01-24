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
 unsigned char* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,unsigned long) ; 

void FUNC3(unsigned int port, void *addr, unsigned long count)
{
	if (port >= 0x300 && port < 0x320)
		FUNC2(FUNC1(port), addr, count);
	else {
		unsigned char *buf = addr;
		unsigned char *portp = FUNC0(port);
		while (count--)
			*buf++ = *(volatile unsigned char *)portp;
	}
}