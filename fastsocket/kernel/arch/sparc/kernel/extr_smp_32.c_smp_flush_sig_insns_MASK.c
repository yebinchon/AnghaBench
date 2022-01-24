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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  smpfunc_t ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  (*) (struct mm_struct*,unsigned long)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 

void FUNC7(struct mm_struct *mm, unsigned long insn_addr)
{
	cpumask_t cpu_mask = *FUNC4(mm);
	FUNC1(FUNC5(), cpu_mask);
	if (!FUNC2(cpu_mask))
		FUNC6((smpfunc_t) FUNC0(local_flush_sig_insns), (unsigned long) mm, insn_addr);
	FUNC3(mm, insn_addr);
}