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
typedef  int u8 ;
typedef  unsigned int u64 ;
typedef  int u32 ;
struct cpuinfo_x86 {int x86; int x86_model; } ;
struct amd64_pvt {unsigned int top_mem; unsigned int top_mem2; int nbcap; int dhar; int online_spare; int ecc_sym_sz; int /*<<< orphan*/  dbam1; int /*<<< orphan*/  F3; int /*<<< orphan*/  dchr1; int /*<<< orphan*/  dclr1; int /*<<< orphan*/  dchr0; int /*<<< orphan*/  dclr0; int /*<<< orphan*/  dbam0; int /*<<< orphan*/  F1; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DBAM0 ; 
 int /*<<< orphan*/  DBAM1 ; 
 int /*<<< orphan*/  DCHR0 ; 
 int /*<<< orphan*/  DCHR1 ; 
 int /*<<< orphan*/  DCLR0 ; 
 int /*<<< orphan*/  DCLR1 ; 
 int /*<<< orphan*/  DHAR ; 
 unsigned int DRAM_RANGES ; 
 int /*<<< orphan*/  EXT_NB_MCA_CFG ; 
 int /*<<< orphan*/  F10_ONLINE_SPARE ; 
 int /*<<< orphan*/  MSR_K8_SYSCFG ; 
 int /*<<< orphan*/  MSR_K8_TOP_MEM1 ; 
 int /*<<< orphan*/  MSR_K8_TOP_MEM2 ; 
 int /*<<< orphan*/  NBCAP ; 
 int /*<<< orphan*/  FUNC1 (struct amd64_pvt*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct cpuinfo_x86 boot_cpu_data ; 
 int /*<<< orphan*/  FUNC3 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct amd64_pvt*,unsigned int) ; 
 scalar_t__ FUNC7 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct amd64_pvt*,unsigned int) ; 
 int FUNC9 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC11 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC15 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct amd64_pvt*) ; 

__attribute__((used)) static void FUNC17(struct amd64_pvt *pvt)
{
	struct cpuinfo_x86 *c = &boot_cpu_data;
	u64 msr_val;
	u32 tmp;
	unsigned range;

	/*
	 * Retrieve TOP_MEM and TOP_MEM2; no masking off of reserved bits since
	 * those are Read-As-Zero
	 */
	FUNC13(MSR_K8_TOP_MEM1, pvt->top_mem);
	FUNC4("  TOP_MEM:  0x%016llx\n", pvt->top_mem);

	/* check first whether TOP_MEM2 is enabled */
	FUNC13(MSR_K8_SYSCFG, msr_val);
	if (msr_val & (1U << 21)) {
		FUNC13(MSR_K8_TOP_MEM2, pvt->top_mem2);
		FUNC4("  TOP_MEM2: 0x%016llx\n", pvt->top_mem2);
	} else
		FUNC4("  TOP_MEM2 disabled.\n");

	FUNC2(pvt->F3, NBCAP, &pvt->nbcap);

	FUNC16(pvt);

	for (range = 0; range < DRAM_RANGES; range++) {
		u8 rw;

		/* read settings for this DRAM range */
		FUNC15(pvt, range);

		rw = FUNC9(pvt, range);
		if (!rw)
			continue;

		FUNC5("  DRAM range[%d], base: 0x%016llx; limit: 0x%016llx\n",
			range,
			FUNC11(pvt, range),
			FUNC12(pvt, range));

		FUNC5("   IntlvEn=%s; Range access: %s%s IntlvSel=%d DstNode=%d\n",
			FUNC7(pvt, range) ? "Enabled" : "Disabled",
			(rw & 0x1) ? "R" : "-",
			(rw & 0x2) ? "W" : "-",
			FUNC8(pvt, range),
			FUNC6(pvt, range));
	}

	FUNC14(pvt);

	FUNC2(pvt->F1, DHAR, &pvt->dhar);
	FUNC1(pvt, DBAM0, &pvt->dbam0);

	FUNC2(pvt->F3, F10_ONLINE_SPARE, &pvt->online_spare);

	FUNC1(pvt, DCLR0, &pvt->dclr0);
	FUNC1(pvt, DCHR0, &pvt->dchr0);

	if (!FUNC3(pvt)) {
		FUNC1(pvt, DCLR1, &pvt->dclr1);
		FUNC1(pvt, DCHR1, &pvt->dchr1);
	}

	pvt->ecc_sym_sz = 4;

	if (c->x86 >= 0x10) {
		FUNC2(pvt->F3, EXT_NB_MCA_CFG, &tmp);
		if (c->x86 != 0x16)
			/* F16h has only DCT0 */
			FUNC1(pvt, DBAM1, &pvt->dbam1);

		/* F10h, revD and later can do x8 ECC too */
		if ((c->x86 > 0x10 || c->x86_model > 7) && tmp & FUNC0(25))
			pvt->ecc_sym_sz = 8;
	}
	FUNC10(pvt);
}