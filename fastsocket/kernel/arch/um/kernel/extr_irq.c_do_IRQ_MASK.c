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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct pt_regs* FUNC3 (struct pt_regs*) ; 

unsigned int FUNC4(int irq, struct uml_pt_regs *regs)
{
	struct pt_regs *old_regs = FUNC3((struct pt_regs *)regs);
	FUNC1();
	FUNC0(irq);
	FUNC2();
	FUNC3(old_regs);
	return 1;
}