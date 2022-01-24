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
 int BTE_WACQUIRE ; 
 int BTE_ZERO_FILL ; 
 int /*<<< orphan*/  FETCHOP_LOAD ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FETCHOP_VAR_SIZE ; 
 int SH2_AMO_CACHE_ENTRIES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long __IA64_UNCACHED_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned long,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ is_sn2 ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * scratch_page ; 

__attribute__((used)) static inline int
FUNC8(unsigned long addr, int len)
{
	int status;

	if (is_sn2) {
		if (FUNC5()) {
			int nid;
			void *p;
			int i;

			nid = FUNC7(FUNC4(FUNC2(addr)));
			p = (void *)FUNC1(scratch_page[nid]);

			for (i=0; i < SH2_AMO_CACHE_ENTRIES; i++) {
				FUNC0(p, FETCHOP_LOAD);
				p += FETCHOP_VAR_SIZE;
			}
		}

		status = FUNC3(0, addr & ~__IA64_UNCACHED_OFFSET, len,
				  BTE_WACQUIRE | BTE_ZERO_FILL, NULL);
	} else {
		FUNC6((char *) addr, 0, len);
		status = 0;
	}
	return status;
}