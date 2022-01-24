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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NPTCG_FROM_KERNEL_PARAMETER ; 
 int NPTCG_FROM_PAL ; 
 int NPTCG_FROM_PALO ; 
 int PALO_MAX_TLB_PURGES ; 
 int PAL_MAX_PURGES ; 
 int need_ptcg_sem ; 
 int nptcg ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ptcg_sem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ toolatetochangeptcgsem ; 

void
FUNC4(int max_purges, int nptcg_from)
{
	static int kp_override;
	static int palo_override;
	static int firstcpu = 1;

	if (toolatetochangeptcgsem) {
		if (nptcg_from == NPTCG_FROM_PAL && max_purges == 0)
			FUNC0(1 < nptcg);
		else
			FUNC0(max_purges < nptcg);
		return;
	}

	if (nptcg_from == NPTCG_FROM_KERNEL_PARAMETER) {
		kp_override = 1;
		nptcg = max_purges;
		goto resetsema;
	}
	if (kp_override) {
		need_ptcg_sem = FUNC1() > nptcg;
		return;
	}

	if (nptcg_from == NPTCG_FROM_PALO) {
		palo_override = 1;

		/* In PALO max_purges == 0 really means it! */
		if (max_purges == 0)
			FUNC2("Whoa! Platform does not support global TLB purges.\n");
		nptcg = max_purges;
		if (nptcg == PALO_MAX_TLB_PURGES) {
			need_ptcg_sem = 0;
			return;
		}
		goto resetsema;
	}
	if (palo_override) {
		if (nptcg != PALO_MAX_TLB_PURGES)
			need_ptcg_sem = (FUNC1() > nptcg);
		return;
	}

	/* In PAL_VM_SUMMARY max_purges == 0 actually means 1 */
	if (max_purges == 0) max_purges = 1;

	if (firstcpu) {
		nptcg = max_purges;
		firstcpu = 0;
	}
	if (max_purges < nptcg)
		nptcg = max_purges;
	if (nptcg == PAL_MAX_PURGES) {
		need_ptcg_sem = 0;
		return;
	} else
		need_ptcg_sem = (FUNC1() > nptcg);

resetsema:
	FUNC3(&ptcg_sem, max_purges);
}