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
 unsigned long FUNC0 () ; 

__attribute__((used)) static unsigned long FUNC1(unsigned long memsize)
{
	unsigned long pvr;

	pvr = FUNC0();

	switch (pvr & 0xf0000ff0) {
		case 0x40000850:
		case 0x400008d0:
		case 0x200008d0:
			memsize -= 4096;
			break;
		default:
			break;
	}

	return memsize;
}