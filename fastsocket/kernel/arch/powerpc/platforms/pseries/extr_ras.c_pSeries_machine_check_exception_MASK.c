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
struct rtas_error_log {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 scalar_t__ fwnmi_active ; 
 struct rtas_error_log* FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct pt_regs*,struct rtas_error_log*) ; 

int FUNC3(struct pt_regs *regs)
{
	struct rtas_error_log *errp;

	if (fwnmi_active) {
		errp = FUNC0(regs);
		FUNC1();
		if (errp && FUNC2(regs, errp))
			return 1;
	}

	return 0;
}