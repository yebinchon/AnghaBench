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
struct uart_pmac_port {int /*<<< orphan*/  curregs; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMACZILOG_FLAG_REGS_HELD ; 
 int /*<<< orphan*/  FUNC0 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC1 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_pmac_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct uart_pmac_port *uap)
{
       	if (!FUNC0(uap)) {
		if (FUNC1(uap)) {
			uap->flags |= PMACZILOG_FLAG_REGS_HELD;
		} else {
			FUNC2("pmz: maybe_update_regs: updating\n");
			FUNC3(uap, uap->curregs);
		}
	}
}