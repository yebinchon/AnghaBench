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
 unsigned int FUNC0 (unsigned long) ; 

void FUNC1 (unsigned long port, void *dst, unsigned long count)
{
	unsigned char *p;

	p = (unsigned char *)dst;

	while (((unsigned long)p) & 0x3) {
		if (!count)
			return;
		count--;
		*p = FUNC0(port);
		p++;
	}

	while (count >= 4) {
		unsigned int w;
		count -= 4;
		w = FUNC0(port) << 24;
		w |= FUNC0(port) << 16;
		w |= FUNC0(port) << 8;
		w |= FUNC0(port);
		*(unsigned int *) p = w;
		p += 4;
	}

	while (count) {
		--count;
		*p = FUNC0(port);
		p++;
	}
}