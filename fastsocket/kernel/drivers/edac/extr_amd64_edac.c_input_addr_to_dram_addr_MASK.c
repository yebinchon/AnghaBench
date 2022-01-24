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
typedef  unsigned int u64 ;
typedef  int u32 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {unsigned int mc_node_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC3 (struct amd64_pvt*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct amd64_pvt*,unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC6(struct mem_ctl_info *mci, u64 input_addr)
{
	struct amd64_pvt *pvt;
	unsigned node_id, intlv_shift;
	u64 bits, dram_addr;
	u32 intlv_sel;

	/*
	 * Near the start of section 3.4.4 (p. 70, BKDG #26094, K8, revA-E)
	 * shows how to translate a DramAddr to an InputAddr. Here we reverse
	 * this procedure. When translating from a DramAddr to an InputAddr, the
	 * bits used for node interleaving are discarded.  Here we recover these
	 * bits from the IntlvSel field of the DRAM Limit register (section
	 * 3.4.4.2) for the node that input_addr is associated with.
	 */
	pvt = mci->pvt_info;
	node_id = pvt->mc_node_id;

	FUNC0(node_id > 7);

	intlv_shift = FUNC5(FUNC3(pvt, 0));
	if (intlv_shift == 0) {
		FUNC2("    InputAddr 0x%lx translates to DramAddr of "
			"same value\n",	(unsigned long)input_addr);

		return input_addr;
	}

	bits = ((input_addr & FUNC1(12, 35)) << intlv_shift) +
		(input_addr & 0xfff);

	intlv_sel = FUNC4(pvt, node_id) & ((1 << intlv_shift) - 1);
	dram_addr = bits + (intlv_sel << 12);

	FUNC2("InputAddr 0x%lx translates to DramAddr 0x%lx "
		"(%d node interleave bits)\n", (unsigned long)input_addr,
		(unsigned long)dram_addr, intlv_shift);

	return dram_addr;
}