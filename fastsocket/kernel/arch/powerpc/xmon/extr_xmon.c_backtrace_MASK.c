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
struct pt_regs {unsigned long* gpr; int /*<<< orphan*/  nip; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pt_regs *excp)
{
	unsigned long sp;

	if (FUNC0(&sp))
		FUNC2(sp, 0, 0);
	else
		FUNC2(excp->gpr[1], excp->link, excp->nip);
	FUNC1();
}