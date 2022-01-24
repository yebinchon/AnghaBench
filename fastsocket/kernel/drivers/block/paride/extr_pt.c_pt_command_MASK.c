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
struct pt_unit {int /*<<< orphan*/  name; struct pi_adapter* pi; } ;
struct pi_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_unit*) ; 
 int STAT_BUSY ; 
 int STAT_DRQ ; 
 int /*<<< orphan*/  FUNC1 (struct pi_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct pi_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct pi_adapter*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct pt_unit*,int,int,char*,char*) ; 
 int FUNC6 (struct pi_adapter*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pi_adapter*,int,int) ; 

__attribute__((used)) static int FUNC8(struct pt_unit *tape, char *cmd, int dlen, char *fun)
{
	struct pi_adapter *pi = tape->pi;
	FUNC1(pi);

	FUNC7(pi, 6, FUNC0(tape));

	if (FUNC5(tape, STAT_BUSY | STAT_DRQ, 0, fun, "before command")) {
		FUNC2(pi);
		return -1;
	}

	FUNC7(pi, 4, dlen % 256);
	FUNC7(pi, 5, dlen / 256);
	FUNC7(pi, 7, 0xa0);	/* ATAPI packet command */

	if (FUNC5(tape, STAT_BUSY, STAT_DRQ, fun, "command DRQ")) {
		FUNC2(pi);
		return -1;
	}

	if (FUNC6(pi, 2) != 1) {
		FUNC4("%s: %s: command phase error\n", tape->name, fun);
		FUNC2(pi);
		return -1;
	}

	FUNC3(pi, cmd, 12);

	return 0;
}