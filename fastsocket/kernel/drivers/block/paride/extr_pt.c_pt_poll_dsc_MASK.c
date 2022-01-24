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
 int /*<<< orphan*/  FUNC0 (struct pt_unit*) ; 
 int STAT_ERR ; 
 int STAT_SEEK ; 
 int /*<<< orphan*/  FUNC1 (struct pi_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct pi_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct pi_adapter*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pi_adapter*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct pt_unit *tape, int pause, int tmo, char *msg)
{
	struct pi_adapter *pi = tape->pi;
	int k, e, s;

	k = 0;
	e = 0;
	s = 0;
	while (k < tmo) {
		FUNC5(pause);
		k++;
		FUNC1(pi);
		FUNC7(pi, 6, FUNC0(tape));
		s = FUNC6(pi, 7);
		e = FUNC6(pi, 1);
		FUNC2(pi);
		if (s & (STAT_ERR | STAT_SEEK))
			break;
	}
	if ((k >= tmo) || (s & STAT_ERR)) {
		if (k >= tmo)
			FUNC3("%s: %s DSC timeout\n", tape->name, msg);
		else
			FUNC3("%s: %s stat=0x%x err=0x%x\n", tape->name, msg, s,
			       e);
		FUNC4(tape, 0);
		return 0;
	}
	return 1;
}