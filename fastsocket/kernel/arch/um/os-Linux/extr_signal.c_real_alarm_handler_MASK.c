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
struct uml_pt_regs {scalar_t__ is_user; } ;
struct sigcontext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGVTALRM ; 
 int /*<<< orphan*/  FUNC0 (struct uml_pt_regs*,struct sigcontext*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct uml_pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct sigcontext *sc)
{
	struct uml_pt_regs regs;

	if (sc != NULL)
		FUNC0(&regs, sc);
	regs.is_user = 0;
	FUNC2();
	FUNC1(SIGVTALRM, &regs);
}