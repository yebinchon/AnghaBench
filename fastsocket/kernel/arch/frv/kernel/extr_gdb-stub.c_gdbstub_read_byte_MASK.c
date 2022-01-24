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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(const void *addr, uint8_t *_res)
{
	unsigned long brr;
	uint8_t res;

	if (!FUNC0(addr))
		return 0;

	asm volatile("	movgs	gr0,brr	\n"
		     "	ldub%I2	%M2,%0	\n"
		     "	movsg	brr,%1	\n"
		     : "=r"(res), "=r"(brr)
		     : "m"(*(uint8_t *) addr));
	*_res = res;
	FUNC1();
	return FUNC2(!brr);
}