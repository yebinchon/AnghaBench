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
 int /*<<< orphan*/  ARVHCOUNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static inline void FUNC3(int exp_line)
{
#if CHECK_LOST
	int tmout = 10000;	/* FIXME */
	int l;

	/*
	 * check HCOUNT because we cannot check vertical sync.
	 */
	for (; tmout >= 0; tmout--) {
		l = ar_inl(ARVHCOUNT);
		if (l == exp_line)
			break;
	}
	if (tmout < 0)
		printk("arv: lost %d -> %d\n", exp_line, l);
#else
	while (FUNC0(ARVHCOUNT) != exp_line)
		FUNC1();
#endif
}