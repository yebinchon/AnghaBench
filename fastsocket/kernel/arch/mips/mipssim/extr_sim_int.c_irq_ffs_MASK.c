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
 unsigned int CAUSEB_IP ; 
 int FUNC0 (unsigned int) ; 
 int s0 ; 

__attribute__((used)) static inline unsigned int FUNC1(unsigned int pending)
{
#if defined(CONFIG_CPU_MIPS32) || defined(CONFIG_CPU_MIPS64)
	return -clz(pending) + 31 - CAUSEB_IP;
#else
	unsigned int a0 = 7;
	unsigned int t0;

	t0 = s0 & 0xf000;
	t0 = t0 < 1;
	t0 = t0 << 2;
	a0 = a0 - t0;
	s0 = s0 << t0;

	t0 = s0 & 0xc000;
	t0 = t0 < 1;
	t0 = t0 << 1;
	a0 = a0 - t0;
	s0 = s0 << t0;

	t0 = s0 & 0x8000;
	t0 = t0 < 1;
	/* t0 = t0 << 2; */
	a0 = a0 - t0;
	/* s0 = s0 << t0; */

	return a0;
#endif
}