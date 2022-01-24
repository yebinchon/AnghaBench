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
struct pt_regs {int dummy; } ;
struct mce {int status; } ;

/* Variables and functions */
 scalar_t__ MCE_PANIC_SEVERITY ; 
 int MCI_STATUS_VAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 
 int banks ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mce*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (int,struct mce*,struct pt_regs*) ; 
 int /*<<< orphan*/  tolerant ; 

__attribute__((used)) static int FUNC5(struct mce *m, char **msg, unsigned long *validp,
			  struct pt_regs *regs)
{
	int i, ret = 0;

	for (i = 0; i < banks; i++) {
		m->status = FUNC2(FUNC0(i));
		if (m->status & MCI_STATUS_VAL) {
			FUNC1(i, validp);
			if (&quirk_no_way_out)
				FUNC4(i, m, regs);
		}
		if (FUNC3(m, tolerant, msg) >= MCE_PANIC_SEVERITY)
			ret = 1;
	}
	return ret;
}