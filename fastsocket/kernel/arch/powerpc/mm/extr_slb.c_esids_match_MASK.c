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
 int /*<<< orphan*/  CPU_FTR_1T_SEGMENT ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 unsigned long SID_SHIFT_1T ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(unsigned long addr1, unsigned long addr2)
{
	int esid_1t_count;

	/* System is not 1T segment size capable. */
	if (!FUNC2(CPU_FTR_1T_SEGMENT))
		return (FUNC0(addr1) == FUNC0(addr2));

	esid_1t_count = (((addr1 >> SID_SHIFT_1T) != 0) +
				((addr2 >> SID_SHIFT_1T) != 0));

	/* both addresses are < 1T */
	if (esid_1t_count == 0)
		return (FUNC0(addr1) == FUNC0(addr2));

	/* One address < 1T, the other > 1T.  Not a match */
	if (esid_1t_count == 1)
		return 0;

	/* Both addresses are > 1T. */
	return (FUNC1(addr1) == FUNC1(addr2));
}