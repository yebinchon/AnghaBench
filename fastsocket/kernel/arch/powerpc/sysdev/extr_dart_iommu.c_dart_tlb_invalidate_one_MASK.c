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
 int /*<<< orphan*/  DART_CNTL ; 
 unsigned long DART_CNTL_U4_ENABLE ; 
 unsigned long DART_CNTL_U4_IONE ; 
 unsigned long DART_CNTL_U4_IONE_MASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  invalidate_lock ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC6(unsigned long bus_rpn)
{
	unsigned int reg;
	unsigned int l, limit;
	unsigned long flags;

	FUNC4(&invalidate_lock, flags);

	reg = DART_CNTL_U4_ENABLE | DART_CNTL_U4_IONE |
		(bus_rpn & DART_CNTL_U4_IONE_MASK);
	FUNC1(DART_CNTL, reg);

	limit = 0;
wait_more:
	l = 0;
	while ((FUNC0(DART_CNTL) & DART_CNTL_U4_IONE) && l < (1L << limit)) {
		FUNC3();
		l++;
	}

	if (l == (1L << limit)) {
		if (limit < 4) {
			limit++;
			goto wait_more;
		} else
			FUNC2("DART: TLB did not flush after waiting a long "
			      "time. Buggy U4 ?");
	}

	FUNC5(&invalidate_lock, flags);
}