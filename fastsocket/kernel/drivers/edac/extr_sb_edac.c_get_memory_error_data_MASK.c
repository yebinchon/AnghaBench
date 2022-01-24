#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  long u64 ;
typedef  int u32 ;
struct sbridge_pvt {int /*<<< orphan*/ * pci_tad; scalar_t__ is_close_pg; scalar_t__ is_lockstep; scalar_t__ is_mirrored; int /*<<< orphan*/  pci_ha0; TYPE_1__* sbridge_dev; int /*<<< orphan*/  pci_sad0; scalar_t__ tohm; scalar_t__ tolm; } ;
struct mem_ctl_info {struct sbridge_pvt* pvt_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MAX_INTERLEAVE ; 
 int MAX_RIR_RANGES ; 
 int MAX_SAD ; 
 int MAX_TAD ; 
 long FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 long FUNC6 (int) ; 
 int FUNC7 (int) ; 
 long FUNC8 (int) ; 
 long FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,long,...) ; 
 int /*<<< orphan*/ * dram_rule ; 
 int /*<<< orphan*/  FUNC16 (struct mem_ctl_info*,char*) ; 
 char* FUNC17 (int) ; 
 struct mem_ctl_info* FUNC18 (int) ; 
 int /*<<< orphan*/ * interleave_list ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ ** rir_offset ; 
 int /*<<< orphan*/ * rir_way_limit ; 
 int FUNC20 (int,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,...) ; 
 int /*<<< orphan*/ * tad_ch_nilv_offset ; 
 int /*<<< orphan*/ * tad_dram_rule ; 

__attribute__((used)) static int FUNC22(struct mem_ctl_info *mci,
				 u64 addr,
				 u8 *socket,
				 long *channel_mask,
				 u8 *rank,
				 char *area_type)
{
	struct mem_ctl_info	*new_mci;
	struct sbridge_pvt *pvt = mci->pvt_info;
	char			msg[256];
	int 			n_rir, n_sads, n_tads, sad_way, sck_xch;
	int			sad_interl, idx, base_ch;
	int			interleave_mode;
	unsigned		sad_interleave[MAX_INTERLEAVE];
	u32			reg;
	u8			ch_way,sck_way;
	u32			tad_offset;
	u32			rir_way;
	u64			ch_addr, offset, limit, prv = 0;


	/*
	 * Step 0) Check if the address is at special memory ranges
	 * The check bellow is probably enough to fill all cases where
	 * the error is not inside a memory, except for the legacy
	 * range (e. g. VGA addresses). It is unlikely, however, that the
	 * memory controller would generate an error on that range.
	 */
	if ((addr > (u64) pvt->tolm) && (addr < (1L << 32))) {
		FUNC21(msg, "Error at TOLM area, on addr 0x%08Lx", addr);
		FUNC16(mci, msg);
		return -EINVAL;
	}
	if (addr >= (u64)pvt->tohm) {
		FUNC21(msg, "Error at MMIOH area, on addr 0x%016Lx", addr);
		FUNC16(mci, msg);
		return -EINVAL;
	}

	/*
	 * Step 1) Get socket
	 */
	for (n_sads = 0; n_sads < MAX_SAD; n_sads++) {
		FUNC19(pvt->pci_sad0, dram_rule[n_sads],
				      &reg);

		if (!FUNC0(reg))
			continue;

		limit = FUNC6(reg);
		if (limit <= prv) {
			FUNC21(msg, "Can't discover the memory socket");
			FUNC16(mci, msg);
			return -EINVAL;
		}
		if  (addr <= limit)
			break;
		prv = limit;
	}
	if (n_sads == MAX_SAD) {
		FUNC21(msg, "Can't discover the memory socket");
		FUNC16(mci, msg);
		return -EINVAL;
	}
	area_type = FUNC17(reg);
	interleave_mode = FUNC1(reg);

	FUNC19(pvt->pci_sad0, interleave_list[n_sads],
			      &reg);
	sad_interl = FUNC20(reg, 0);
	for (sad_way = 0; sad_way < 8; sad_way++) {
		if (sad_way > 0 && sad_interl == FUNC20(reg, sad_way))
			break;
		sad_interleave[sad_way] = FUNC20(reg, sad_way);
		FUNC15("SAD interleave #%d: %d\n",
			sad_way, sad_interleave[sad_way]);
	}
	FUNC15("mc#%d: Error detected on SAD#%d: address 0x%016Lx < 0x%016Lx, Interleave [%d:6]%s\n",
		pvt->sbridge_dev->mc,
		n_sads,
		addr,
		limit,
		sad_way + 7,
		FUNC1(reg) ? "" : "XOR[18:16]");
	if (interleave_mode)
		idx = ((addr >> 6) ^ (addr >> 16)) & 7;
	else
		idx = (addr >> 6) & 7;
	switch (sad_way) {
	case 1:
		idx = 0;
		break;
	case 2:
		idx = idx & 1;
		break;
	case 4:
		idx = idx & 3;
		break;
	case 8:
		break;
	default:
		FUNC21(msg, "Can't discover socket interleave");
		FUNC16(mci, msg);
		return -EINVAL;
	}
	*socket = sad_interleave[idx];
	FUNC15("SAD interleave index: %d (wayness %d) = CPU socket %d\n",
		idx, sad_way, *socket);

	/*
	 * Move to the proper node structure, in order to access the
	 * right PCI registers
	 */
	new_mci = FUNC18(*socket);
	if (!new_mci) {
		FUNC21(msg, "Struct for socket #%u wasn't initialized",
			*socket);
		FUNC16(mci, msg);
		return -EINVAL;
	}
	mci = new_mci;
	pvt = mci->pvt_info;

	/*
	 * Step 2) Get memory channel
	 */
	prv = 0;
	for (n_tads = 0; n_tads < MAX_TAD; n_tads++) {
		FUNC19(pvt->pci_ha0, tad_dram_rule[n_tads],
				      &reg);
		limit = FUNC8(reg);
		if (limit <= prv) {
			FUNC21(msg, "Can't discover the memory channel");
			FUNC16(mci, msg);
			return -EINVAL;
		}
		if  (addr <= limit)
			break;
		prv = limit;
	}
	ch_way = FUNC7(reg) + 1;
	sck_way = FUNC10(reg) + 1;
	/*
	 * FIXME: Is it right to always use channel 0 for offsets?
	 */
	FUNC19(pvt->pci_tad[0],
				tad_ch_nilv_offset[n_tads],
				&tad_offset);

	if (ch_way == 3)
		idx = addr >> 6;
	else
		idx = addr >> (6 + sck_way);
	idx = idx % ch_way;

	/*
	 * FIXME: Shouldn't we use CHN_IDX_OFFSET() here, when ch_way == 3 ???
	 */
	switch (idx) {
	case 0:
		base_ch = FUNC11(reg);
		break;
	case 1:
		base_ch = FUNC12(reg);
		break;
	case 2:
		base_ch = FUNC13(reg);
		break;
	case 3:
		base_ch = FUNC14(reg);
		break;
	default:
		FUNC21(msg, "Can't discover the TAD target");
		FUNC16(mci, msg);
		return -EINVAL;
	}
	*channel_mask = 1 << base_ch;

	if (pvt->is_mirrored) {
		*channel_mask |= 1 << ((base_ch + 2) % 4);
		switch(ch_way) {
		case 2:
		case 4:
			sck_xch = 1 << sck_way * (ch_way >> 1);
			break;
		default:
			FUNC21(msg, "Invalid mirror set. Can't decode addr");
			FUNC16(mci, msg);
			return -EINVAL;
		}
	} else
		sck_xch = (1 << sck_way) * ch_way;

	if (pvt->is_lockstep)
		*channel_mask |= 1 << ((base_ch + 1) % 4);

	offset = FUNC9(tad_offset);

	FUNC15("TAD#%d: address 0x%016Lx < 0x%016Lx, socket interleave %d, channel interleave %d (offset 0x%08Lx), index %d, base ch: %d, ch mask: 0x%02lx\n",
		n_tads,
		addr,
		limit,
		(u32)FUNC10(reg),
		ch_way,
		offset,
		idx,
		base_ch,
		*channel_mask);

	/* Calculate channel address */
	/* Remove the TAD offset */

	if (offset > addr) {
		FUNC21(msg, "Can't calculate ch addr: TAD offset 0x%08Lx is too high for addr 0x%08Lx!",
			offset, addr);
		FUNC16(mci, msg);
		return -EINVAL;
	}
	addr -= offset;
	/* Store the low bits [0:6] of the addr */
	ch_addr = addr & 0x7f;
	/* Remove socket wayness and remove 6 bits */
	addr >>= 6;
	addr /= sck_xch;
#if 0
	/* Divide by channel way */
	addr = addr / ch_way;
#endif
	/* Recover the last 6 bits */
	ch_addr |= addr << 6;

	/*
	 * Step 3) Decode rank
	 */
	for (n_rir = 0; n_rir < MAX_RIR_RANGES; n_rir++) {
		FUNC19(pvt->pci_tad[base_ch],
				      rir_way_limit[n_rir],
				      &reg);

		if (!FUNC2(reg))
			continue;

		limit = FUNC3(reg);

		FUNC15("RIR#%d, limit: %Lu.%03Lu GB (0x%016Lx), way: %d\n",
			n_rir,
			(limit >> 20) / 1000, (limit >> 20) % 1000,
			limit,
			1 << FUNC5(reg));
		if  (ch_addr <= limit)
			break;
	}
	if (n_rir == MAX_RIR_RANGES) {
		FUNC21(msg, "Can't discover the memory rank for ch addr 0x%08Lx",
			ch_addr);
		FUNC16(mci, msg);
		return -EINVAL;
	}
	rir_way = FUNC5(reg);
	if (pvt->is_close_pg)
		idx = (ch_addr >> 6);
	else
		idx = (ch_addr >> 13);	/* FIXME: Datasheet says to shift by 15 */
	idx %= 1 << rir_way;

	FUNC19(pvt->pci_tad[base_ch],
			      rir_offset[n_rir][idx],
			      &reg);
	*rank = FUNC4(reg);

	FUNC15("RIR#%d: channel address 0x%08Lx < 0x%08Lx, RIR interleave %d, index %d\n",
		n_rir,
		ch_addr,
		limit,
		rir_way,
		idx);

	return 0;
}