#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int tlbsize; } ;
struct TYPE_3__ {int tlbsize; } ;

/* Variables and functions */
 int MAX_SMTC_ASIDS ; 
 int MAX_SMTC_TLBS ; 
 int MIPS_CONF_MT ; 
 unsigned long MVPCONF0_PTLBE ; 
 unsigned long MVPCONF0_PTLBE_SHIFT ; 
 unsigned long MVPCONF0_PVPE ; 
 unsigned long MVPCONF0_PVPE_SHIFT ; 
 unsigned long MVPCONF0_TLBS ; 
 int MVPCONTROL_STLB ; 
 int MVPCONTROL_VPC ; 
 int /*<<< orphan*/  SMTC_TLB_SHARED ; 
 int /*<<< orphan*/  TCHALT_H ; 
 TYPE_2__* cpu_data ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  nostlb ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 unsigned long FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 unsigned long FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__** smtc_live_asid ; 
 int /*<<< orphan*/  smtc_status ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
	int i, tlbsiz, vpes;
	unsigned long mvpconf0;
	unsigned long config1val;

	/* Set up ASID preservation table */
	for (vpes=0; vpes<MAX_SMTC_TLBS; vpes++) {
	    for(i = 0; i < MAX_SMTC_ASIDS; i++) {
		smtc_live_asid[vpes][i] = 0;
	    }
	}
	mvpconf0 = FUNC4();

	if ((vpes = ((mvpconf0 & MVPCONF0_PVPE)
			>> MVPCONF0_PVPE_SHIFT) + 1) > 1) {
	    /* If we have multiple VPEs, try to share the TLB */
	    if ((mvpconf0 & MVPCONF0_TLBS) && !nostlb) {
		/*
		 * If TLB sizing is programmable, shared TLB
		 * size is the total available complement.
		 * Otherwise, we have to take the sum of all
		 * static VPE TLB entries.
		 */
		if ((tlbsiz = ((mvpconf0 & MVPCONF0_PTLBE)
				>> MVPCONF0_PTLBE_SHIFT)) == 0) {
		    /*
		     * If there's more than one VPE, there had better
		     * be more than one TC, because we need one to bind
		     * to each VPE in turn to be able to read
		     * its configuration state!
		     */
		    FUNC8(1);
		    /* Stop the TC from doing anything foolish */
		    FUNC11(TCHALT_H);
		    FUNC2();
		    /* No need to un-Halt - that happens later anyway */
		    for (i=0; i < vpes; i++) {
		    	FUNC10(i);
			/*
			 * To be 100% sure we're really getting the right
			 * information, we exit the configuration state
			 * and do an IHB after each rebinding.
			 */
			FUNC9(
				FUNC5() & ~ MVPCONTROL_VPC );
			FUNC2();
			/*
			 * Only count if the MMU Type indicated is TLB
			 */
			if (((FUNC6() & MIPS_CONF_MT) >> 7) == 1) {
				config1val = FUNC7();
				tlbsiz += ((config1val >> 25) & 0x3f) + 1;
			}

			/* Put core back in configuration state */
			FUNC9(
				FUNC5() | MVPCONTROL_VPC );
			FUNC2();
		    }
		}
		FUNC9(FUNC5() | MVPCONTROL_STLB);
		FUNC0();

		/*
		 * Setup kernel data structures to use software total,
		 * rather than read the per-VPE Config1 value. The values
		 * for "CPU 0" gets copied to all the other CPUs as part
		 * of their initialization in smtc_cpu_setup().
		 */

		/* MIPS32 limits TLB indices to 64 */
		if (tlbsiz > 64)
			tlbsiz = 64;
		cpu_data[0].tlbsize = current_cpu_data.tlbsize = tlbsiz;
		smtc_status |= SMTC_TLB_SHARED;
		FUNC1();

		FUNC3("TLB of %d entry pairs shared by %d VPEs\n",
			tlbsiz, vpes);
	    } else {
		FUNC3("WARNING: TLB Not Sharable on SMTC Boot!\n");
	    }
	}
}