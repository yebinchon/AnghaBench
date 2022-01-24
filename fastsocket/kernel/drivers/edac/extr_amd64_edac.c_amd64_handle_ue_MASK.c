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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct mem_ctl_info {int dummy; } ;
struct mce {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_MOD_STR ; 
 int MCI_STATUS_ADDRV ; 
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mem_ctl_info* FUNC4 (struct mem_ctl_info*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct mce*) ; 
 int FUNC6 (struct mem_ctl_info*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct mem_ctl_info *mci, struct mce *m)
{
	struct mem_ctl_info *log_mci, *src_mci = NULL;
	int csrow;
	u64 sys_addr;
	u32 page, offset;

	log_mci = mci;

	if (!(m->status & MCI_STATUS_ADDRV)) {
		FUNC0(mci, "HW has no ERROR_ADDRESS available\n");
		FUNC2(log_mci, EDAC_MOD_STR);
		return;
	}

	sys_addr = FUNC5(m);

	/*
	 * Find out which node the error address belongs to. This may be
	 * different from the node that detected the error.
	 */
	src_mci = FUNC4(mci, sys_addr);
	if (!src_mci) {
		FUNC0(mci, "ERROR ADDRESS (0x%lx) NOT mapped to a MC\n",
				  (unsigned long)sys_addr);
		FUNC2(log_mci, EDAC_MOD_STR);
		return;
	}

	log_mci = src_mci;

	csrow = FUNC6(log_mci, sys_addr);
	if (csrow < 0) {
		FUNC0(mci, "ERROR_ADDRESS (0x%lx) NOT mapped to CS\n",
				  (unsigned long)sys_addr);
		FUNC2(log_mci, EDAC_MOD_STR);
	} else {
		FUNC3(sys_addr, &page, &offset);
		FUNC1(log_mci, page, offset, csrow, EDAC_MOD_STR);
	}
}