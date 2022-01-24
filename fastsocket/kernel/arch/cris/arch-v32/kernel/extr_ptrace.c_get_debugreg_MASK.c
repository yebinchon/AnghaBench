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
 int /*<<< orphan*/  BANK_BP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int PT_BP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SPEC_REG_SRS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,long) ; 
 long bp_owner ; 

__attribute__((used)) static long FUNC5(long pid, unsigned int regno)
{
	register int old_srs;
	register long data;

	if (pid != bp_owner) {
		return 0;
	}

	/* Remember old SRS. */
	FUNC1(SPEC_REG_SRS, old_srs);
	/* Switch to BP bank. */
	FUNC3(BANK_BP);

	switch (regno - PT_BP) {
	case 0:
		FUNC4(0, data); break;
	case 1:
	case 2:
		/* error return value? */
		data = 0;
		break;
	case 3:
		FUNC4(3, data); break;
	case 4:
		FUNC4(4, data); break;
	case 5:
		FUNC4(5, data); break;
	case 6:
		FUNC4(6, data); break;
	case 7:
		FUNC4(7, data); break;
	case 8:
		FUNC4(8, data); break;
	case 9:
		FUNC4(9, data); break;
	case 10:
		FUNC4(10, data); break;
	case 11:
		FUNC4(11, data); break;
	case 12:
		FUNC4(12, data); break;
	case 13:
		FUNC4(13, data); break;
	case 14:
		FUNC4(14, data); break;
	default:
		/* error return value? */
		data = 0;
	}

	/* Restore SRS. */
	FUNC2(SPEC_REG_SRS, old_srs);
	/* Just for show. */
	FUNC0();
	FUNC0();
	FUNC0();

	return data;
}