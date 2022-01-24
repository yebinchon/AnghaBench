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
typedef  int u32 ;
struct thread_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPEXC ; 
 int FPEXC_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/ ** last_VFP_context ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

void FUNC5(struct thread_info *thread)
{
	unsigned int cpu = FUNC2();
	u32 fpexc = FUNC0(FPEXC);

	/*
	 * If VFP is enabled, the previous state was already saved and
	 * last_VFP_context updated.
	 */
	if (fpexc & FPEXC_EN)
		goto out;

	if (!last_VFP_context[cpu])
		goto out;

	/*
	 * Save the last VFP state on this CPU.
	 */
	FUNC1(FPEXC, fpexc | FPEXC_EN);
	FUNC4(last_VFP_context[cpu], fpexc);
	FUNC1(FPEXC, fpexc);

	/*
	 * Set the context to NULL to force a reload the next time the thread
	 * uses the VFP.
	 */
	last_VFP_context[cpu] = NULL;

out:
	FUNC3();
}