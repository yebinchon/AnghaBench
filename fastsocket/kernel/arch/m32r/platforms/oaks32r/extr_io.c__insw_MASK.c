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
 unsigned short* FUNC0 (unsigned int) ; 
 unsigned short* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short*) ; 

void FUNC3(unsigned int port, void *addr, unsigned long count)
{
	unsigned short *buf = addr;
	unsigned short *portp;

	if (port >= 0x300 && port < 0x320) {
		portp = FUNC1(port);
		while (count--)
			*buf++ = FUNC2(portp);
	} else {
		portp = FUNC0(port);
		while (count--)
			*buf++ = *(volatile unsigned short *)portp;
	}
}