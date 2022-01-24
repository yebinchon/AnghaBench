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
struct uml_pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uml_pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

void FUNC3(int sig, struct uml_pt_regs *regs)
{
	unsigned long flags;

	FUNC2(flags);
	FUNC0(TIMER_IRQ, regs);
	FUNC1(flags);
}