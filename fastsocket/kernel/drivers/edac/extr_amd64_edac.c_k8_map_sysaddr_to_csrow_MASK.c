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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int nbcfg; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  EDAC_MOD_STR ; 
 int NBCFG_CHIPKILL ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_ctl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mem_ctl_info* FUNC6 (struct mem_ctl_info*,int) ; 
 int FUNC7 (struct mem_ctl_info*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mem_ctl_info*,int) ; 

__attribute__((used)) static void FUNC9(struct mem_ctl_info *mci, u64 sys_addr,
				    u16 syndrome)
{
	struct mem_ctl_info *src_mci;
	struct amd64_pvt *pvt = mci->pvt_info;
	int channel, csrow;
	u32 page, offset;

	/* CHIPKILL enabled */
	if (pvt->nbcfg & NBCFG_CHIPKILL) {
		channel = FUNC7(mci, syndrome);
		if (channel < 0) {
			/*
			 * Syndrome didn't map, so we don't know which of the
			 * 2 DIMMs is in error. So we need to ID 'both' of them
			 * as suspect.
			 */
			FUNC2(mci, "unknown syndrome 0x%04x - possible "
					   "error reporting race\n", syndrome);
			FUNC4(mci, EDAC_MOD_STR);
			return;
		}
	} else {
		/*
		 * non-chipkill ecc mode
		 *
		 * The k8 documentation is unclear about how to determine the
		 * channel number when using non-chipkill memory.  This method
		 * was obtained from email communication with someone at AMD.
		 * (Wish the email was placed in this comment - norsk)
		 */
		channel = ((sys_addr & FUNC0(3)) != 0);
	}

	/*
	 * Find out which node the error address belongs to. This may be
	 * different from the node that detected the error.
	 */
	src_mci = FUNC6(mci, sys_addr);
	if (!src_mci) {
		FUNC1(mci, "failed to map error addr 0x%lx to a node\n",
			     (unsigned long)sys_addr);
		FUNC4(mci, EDAC_MOD_STR);
		return;
	}

	/* Now map the sys_addr to a CSROW */
	csrow = FUNC8(src_mci, sys_addr);
	if (csrow < 0) {
		FUNC4(src_mci, EDAC_MOD_STR);
	} else {
		FUNC5(sys_addr, &page, &offset);

		FUNC3(src_mci, page, offset, syndrome, csrow,
				  channel, EDAC_MOD_STR);
	}
}