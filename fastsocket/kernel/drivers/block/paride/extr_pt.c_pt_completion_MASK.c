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
struct pt_unit {struct pi_adapter* pi; } ;
struct pi_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STAT_BUSY ; 
 int STAT_DRQ ; 
 int STAT_ERR ; 
 int STAT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct pi_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct pi_adapter*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pi_adapter*,char*,int) ; 
 int FUNC3 (struct pt_unit*,int /*<<< orphan*/ ,int,char*,char*) ; 
 int FUNC4 (struct pi_adapter*,int) ; 

__attribute__((used)) static int FUNC5(struct pt_unit *tape, char *buf, char *fun)
{
	struct pi_adapter *pi = tape->pi;
	int r, s, n, p;

	r = FUNC3(tape, STAT_BUSY, STAT_DRQ | STAT_READY | STAT_ERR,
		    fun, "completion");

	if (FUNC4(pi, 7) & STAT_DRQ) {
		n = (((FUNC4(pi, 4) + 256 * FUNC4(pi, 5)) +
		      3) & 0xfffc);
		p = FUNC4(pi, 2) & 3;
		if (p == 0)
			FUNC2(pi, buf, n);
		if (p == 2)
			FUNC1(pi, buf, n);
	}

	s = FUNC3(tape, STAT_BUSY, STAT_READY | STAT_ERR, fun, "data done");

	FUNC0(pi);

	return (r ? r : s);
}