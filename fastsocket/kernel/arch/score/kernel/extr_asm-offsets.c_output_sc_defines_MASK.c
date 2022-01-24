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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_ECR ; 
 int /*<<< orphan*/  SC_EMA ; 
 int /*<<< orphan*/  SC_MDCEH ; 
 int /*<<< orphan*/  SC_MDCEL ; 
 int /*<<< orphan*/  SC_PC ; 
 int /*<<< orphan*/  SC_PSR ; 
 int /*<<< orphan*/  SC_REGS ; 
 int /*<<< orphan*/  sc_ecr ; 
 int /*<<< orphan*/  sc_ema ; 
 int /*<<< orphan*/  sc_mdceh ; 
 int /*<<< orphan*/  sc_mdcel ; 
 int /*<<< orphan*/  sc_pc ; 
 int /*<<< orphan*/  sc_psr ; 
 int /*<<< orphan*/  sc_regs ; 
 int /*<<< orphan*/  sigcontext ; 

void FUNC3(void)
{
	FUNC1("Linux sigcontext offsets.");
	FUNC2(SC_REGS, sigcontext, sc_regs);
	FUNC2(SC_MDCEH, sigcontext, sc_mdceh);
	FUNC2(SC_MDCEL, sigcontext, sc_mdcel);
	FUNC2(SC_PC, sigcontext, sc_pc);
	FUNC2(SC_PSR, sigcontext, sc_psr);
	FUNC2(SC_ECR, sigcontext, sc_ecr);
	FUNC2(SC_EMA, sigcontext, sc_ema);
	FUNC0();
}