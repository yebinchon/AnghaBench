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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(void *addr, uint16_t val)
{
	unsigned long brr;

	if (!FUNC0(addr))
		return 0;

	asm volatile("	movgs	gr0,brr	\n"
		     "	sth%I2	%1,%M2	\n"
		     "	movsg	brr,%0	\n"
		     : "=r"(brr)
		     : "r"(val), "m"(*(uint16_t *) addr));
	FUNC1();
	return FUNC2(!brr);
}