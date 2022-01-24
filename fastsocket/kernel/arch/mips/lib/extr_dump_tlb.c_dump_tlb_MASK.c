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
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long CKSEG0 ; 
 unsigned long long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 unsigned long FUNC3 () ; 
 unsigned long long FUNC4 () ; 
 unsigned long long FUNC5 () ; 
 unsigned int FUNC6 () ; 
 unsigned int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 

__attribute__((used)) static void FUNC11(int first, int last)
{
	unsigned long s_entryhi, entryhi, asid;
	unsigned long long entrylo0, entrylo1;
	unsigned int s_index, pagemask, c0, c1, i;

	s_entryhi = FUNC3();
	s_index = FUNC6();
	asid = s_entryhi & 0xff;

	for (i = first; i <= last; i++) {
		FUNC10(i);
		FUNC0();
		FUNC8();
		FUNC0();
		pagemask = FUNC7();
		entryhi  = FUNC3();
		entrylo0 = FUNC4();
		entrylo1 = FUNC5();

		/* Unused entries have a virtual address of CKSEG0.  */
		if ((entryhi & ~0x1ffffUL) != CKSEG0
		    && (entryhi & 0xff) == asid) {
#ifdef CONFIG_32BIT
			int width = 8;
#else
			int width = 11;
#endif
			/*
			 * Only print entries in use
			 */
			FUNC2("Index: %2d pgmask=%s ", i, FUNC1(pagemask));

			c0 = (entrylo0 >> 3) & 7;
			c1 = (entrylo1 >> 3) & 7;

			FUNC2("va=%0*lx asid=%02lx\n",
			       width, (entryhi & ~0x1fffUL),
			       entryhi & 0xff);
			FUNC2("\t[pa=%0*llx c=%d d=%d v=%d g=%d] ",
			       width,
			       (entrylo0 << 6) & PAGE_MASK, c0,
			       (entrylo0 & 4) ? 1 : 0,
			       (entrylo0 & 2) ? 1 : 0,
			       (entrylo0 & 1) ? 1 : 0);
			FUNC2("[pa=%0*llx c=%d d=%d v=%d g=%d]\n",
			       width,
			       (entrylo1 << 6) & PAGE_MASK, c1,
			       (entrylo1 & 4) ? 1 : 0,
			       (entrylo1 & 2) ? 1 : 0,
			       (entrylo1 & 1) ? 1 : 0);
		}
	}
	FUNC2("\n");

	FUNC9(s_entryhi);
	FUNC10(s_index);
}