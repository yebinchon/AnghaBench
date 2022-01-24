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
typedef  int u64 ;
typedef  int u32 ;
struct sbridge_pvt {int tolm; int tohm; int /*<<< orphan*/ * pci_tad; TYPE_1__* channel; int /*<<< orphan*/  pci_ha0; int /*<<< orphan*/  pci_sad0; int /*<<< orphan*/  pci_sad1; } ;
struct mem_ctl_info {struct sbridge_pvt* pvt_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  dimms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int MAX_RIR_RANGES ; 
 int MAX_SAD ; 
 int MAX_TAD ; 
 int NUM_CHANNELS ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  TOHM ; 
 int /*<<< orphan*/  TOLM ; 
 int /*<<< orphan*/  FUNC18 (char*,int,int,int,...) ; 
 int /*<<< orphan*/ * dram_rule ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/ * interleave_list ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ ** rir_offset ; 
 int /*<<< orphan*/ * rir_way_limit ; 
 int FUNC21 (int,int) ; 
 int /*<<< orphan*/ * tad_ch_nilv_offset ; 
 int /*<<< orphan*/ * tad_dram_rule ; 

__attribute__((used)) static void FUNC22(const struct mem_ctl_info *mci)
{
	struct sbridge_pvt *pvt = mci->pvt_info;
	int i, j, k, n_sads, n_tads, sad_interl;
	u32 reg;
	u64 limit, prv = 0;
	u64 tmp_mb;
	u32 rir_way;

	/*
	 * Step 1) Get TOLM/TOHM ranges
	 */

	/* Address range is 32:28 */
	FUNC20(pvt->pci_sad1, TOLM,
			      &reg);
	pvt->tolm = FUNC2(reg);
	tmp_mb = (1 + pvt->tolm) >> 20;

	FUNC18("TOLM: %Lu.%03Lu GB (0x%016Lx)\n",
		tmp_mb / 1000, tmp_mb % 1000, (u64)pvt->tolm);

	/* Address range is already 45:25 */
	FUNC20(pvt->pci_sad1, TOHM,
			      &reg);
	pvt->tohm = FUNC1(reg);
	tmp_mb = (1 + pvt->tohm) >> 20;

	FUNC18("TOHM: %Lu.%03Lu GB (0x%016Lx)",
		tmp_mb / 1000, tmp_mb % 1000, (u64)pvt->tohm);

	/*
	 * Step 2) Get SAD range and SAD Interleave list
	 * TAD registers contain the interleave wayness. However, it
	 * seems simpler to just discover it indirectly, with the
	 * algorithm bellow.
	 */
	prv = 0;
	for (n_sads = 0; n_sads < MAX_SAD; n_sads++) {
		/* SAD_LIMIT Address range is 45:26 */
		FUNC20(pvt->pci_sad0, dram_rule[n_sads],
				      &reg);
		limit = FUNC9(reg);

		if (!FUNC0(reg))
			continue;

		if (limit <= prv)
			break;

		tmp_mb = (limit + 1) >> 20;
		FUNC18("SAD#%d %s up to %Lu.%03Lu GB (0x%016Lx) %s reg=0x%08x\n",
			n_sads,
			FUNC19(reg),
			tmp_mb / 1000, tmp_mb % 1000,
			((u64)tmp_mb) << 20L,
			FUNC3(reg) ? "Interleave: 8:6" : "Interleave: [8:6]XOR[18:16]",
			reg);
		prv = limit;

		FUNC20(pvt->pci_sad0, interleave_list[n_sads],
				      &reg);
		sad_interl = FUNC21(reg, 0);
		for (j = 0; j < 8; j++) {
			if (j > 0 && sad_interl == FUNC21(reg, j))
				break;

			FUNC18("SAD#%d, interleave #%d: %d\n",
			n_sads, j, FUNC21(reg, j));
		}
	}

	/*
	 * Step 3) Get TAD range
	 */
	prv = 0;
	for (n_tads = 0; n_tads < MAX_TAD; n_tads++) {
		FUNC20(pvt->pci_ha0, tad_dram_rule[n_tads],
				      &reg);
		limit = FUNC11(reg);
		if (limit <= prv)
			break;
		tmp_mb = (limit + 1) >> 20;

		FUNC18("TAD#%d: up to %Lu.%03Lu GB (0x%016Lx), socket interleave %d, memory interleave %d, TGT: %d, %d, %d, %d, reg=0x%08x\n",
			n_tads, tmp_mb / 1000, tmp_mb % 1000,
			((u64)tmp_mb) << 20L,
			(u32)FUNC13(reg),
			(u32)FUNC10(reg),
			(u32)FUNC14(reg),
			(u32)FUNC15(reg),
			(u32)FUNC16(reg),
			(u32)FUNC17(reg),
			reg);
		prv = tmp_mb;
	}

	/*
	 * Step 4) Get TAD offsets, per each channel
	 */
	for (i = 0; i < NUM_CHANNELS; i++) {
		if (!pvt->channel[i].dimms)
			continue;
		for (j = 0; j < n_tads; j++) {
			FUNC20(pvt->pci_tad[i],
					      tad_ch_nilv_offset[j],
					      &reg);
			tmp_mb = FUNC12(reg) >> 20;
			FUNC18("TAD CH#%d, offset #%d: %Lu.%03Lu GB (0x%016Lx), reg=0x%08x\n",
				i, j,
				tmp_mb / 1000, tmp_mb % 1000,
				((u64)tmp_mb) << 20L,
				reg);
		}
	}

	/*
	 * Step 6) Get RIR Wayness/Limit, per each channel
	 */
	for (i = 0; i < NUM_CHANNELS; i++) {
		if (!pvt->channel[i].dimms)
			continue;
		for (j = 0; j < MAX_RIR_RANGES; j++) {
			FUNC20(pvt->pci_tad[i],
					      rir_way_limit[j],
					      &reg);

			if (!FUNC4(reg))
				continue;

			tmp_mb = FUNC5(reg) >> 20;
			rir_way = 1 << FUNC8(reg);
			FUNC18("CH#%d RIR#%d, limit: %Lu.%03Lu GB (0x%016Lx), way: %d, reg=0x%08x\n",
				i, j,
				tmp_mb / 1000, tmp_mb % 1000,
				((u64)tmp_mb) << 20L,
				rir_way,
				reg);

			for (k = 0; k < rir_way; k++) {
				FUNC20(pvt->pci_tad[i],
						      rir_offset[j][k],
						      &reg);
				tmp_mb = FUNC6(reg) << 6;

				FUNC18("CH#%d RIR#%d INTL#%d, offset %Lu.%03Lu GB (0x%016Lx), tgt: %d, reg=0x%08x\n",
					i, j, k,
					tmp_mb / 1000, tmp_mb % 1000,
					((u64)tmp_mb) << 20L,
					(u32)FUNC7(reg),
					reg);
			}
		}
	}
}