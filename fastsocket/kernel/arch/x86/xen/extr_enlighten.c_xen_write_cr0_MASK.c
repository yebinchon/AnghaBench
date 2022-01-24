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
struct multicall_space {int /*<<< orphan*/  mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PARAVIRT_LAZY_CPU ; 
 unsigned long X86_CR0_TS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  xen_cr0_value ; 
 struct multicall_space FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned long cr0)
{
	struct multicall_space mcs;

	FUNC1(xen_cr0_value, cr0);

	/* Only pay attention to cr0.TS; everything else is
	   ignored. */
	mcs = FUNC2(0);

	FUNC0(mcs.mc, (cr0 & X86_CR0_TS) != 0);

	FUNC3(PARAVIRT_LAZY_CPU);
}