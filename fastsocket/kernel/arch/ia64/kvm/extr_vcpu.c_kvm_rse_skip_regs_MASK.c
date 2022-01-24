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
 long FUNC0 (unsigned long*) ; 

__attribute__((used)) static inline unsigned long *FUNC1(unsigned long *addr,
							long num_regs)
{
	long delta = FUNC0(addr) + num_regs;
	int i = 0;

	if (num_regs < 0)
		delta -= 0x3e;
	if (delta < 0) {
		while (delta <= -0x3f) {
			i--;
			delta += 0x3f;
		}
	} else {
		while (delta >= 0x3f) {
			i++;
			delta -= 0x3f;
		}
	}

	return addr + num_regs + i;
}