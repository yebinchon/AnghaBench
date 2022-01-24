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
typedef  unsigned long u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mem_ctl_info {struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {int /*<<< orphan*/  tmp_prt_buffer; int /*<<< orphan*/  pci_dev_16_1_fsb_addr_map; int /*<<< orphan*/  pci_dev_16_2_fsb_err_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FERR_FAT_FBD ; 
 unsigned long FERR_FAT_FBD_ERR_MASK ; 
 int /*<<< orphan*/  FERR_GLOBAL_LO ; 
 int /*<<< orphan*/  FERR_NF_FBD ; 
 unsigned long FERR_NF_FBD_ERR_MASK ; 
 char* FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  NRECMEMA ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NRECMEMB ; 
 unsigned int FUNC6 (unsigned long) ; 
 int FUNC7 (unsigned long) ; 
 unsigned int FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RECMEMA ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RECMEMB ; 
 unsigned int FUNC11 (unsigned long) ; 
 int FUNC12 (unsigned long) ; 
 unsigned int FUNC13 (unsigned long) ; 
 int /*<<< orphan*/  REDMEMA ; 
 int /*<<< orphan*/  REDMEMB ; 
 int /*<<< orphan*/  FUNC14 (struct mem_ctl_info*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mem_ctl_info*,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ferr_fat_fbd_name ; 
 int /*<<< orphan*/  ferr_nf_fbd_name ; 
 unsigned long FUNC16 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,unsigned int,...) ; 
 scalar_t__ FUNC21 (unsigned long) ; 

__attribute__((used)) static void FUNC22(struct mem_ctl_info *mci)
{
	struct i7300_pvt *pvt;
	u32 errnum, value;
	u16 val16;
	unsigned branch, channel, bank, rank, cas, ras;
	u32 syndrome;

	unsigned long errors;
	const char *specific;
	bool is_wr;

	pvt = mci->pvt_info;

	/* read in the 1st FATAL error register */
	FUNC17(pvt->pci_dev_16_1_fsb_addr_map,
			      FERR_FAT_FBD, &value);
	if (FUNC21(value & FERR_FAT_FBD_ERR_MASK)) {
		errors = value & FERR_FAT_FBD_ERR_MASK ;
		errnum = FUNC16(&errors,
					FUNC0(ferr_fat_fbd_name));
		specific = FUNC1(ferr_fat_fbd_name, errnum);

		branch = (FUNC2(value) == 2) ? 1 : 0;
		FUNC18(pvt->pci_dev_16_1_fsb_addr_map,
				     NRECMEMA, &val16);
		bank = FUNC4(val16);
		rank = FUNC5(val16);

		FUNC17(pvt->pci_dev_16_1_fsb_addr_map,
				NRECMEMB, &value);

		is_wr = FUNC7(value);
		cas = FUNC6(value);
		ras = FUNC8(value);

		FUNC20(pvt->tmp_prt_buffer, PAGE_SIZE,
			"FATAL (Branch=%d DRAM-Bank=%d %s "
			"RAS=%d CAS=%d Err=0x%lx (%s))",
			branch, bank,
			is_wr ? "RDWR" : "RD",
			ras, cas,
			errors, specific);

		/* Call the helper to output message */
		FUNC15(mci, rank, branch << 1,
				      (branch << 1) + 1,
				      pvt->tmp_prt_buffer);
	}

	/* read in the 1st NON-FATAL error register */
	FUNC17(pvt->pci_dev_16_1_fsb_addr_map,
			      FERR_NF_FBD, &value);
	if (FUNC21(value & FERR_NF_FBD_ERR_MASK)) {
		errors = value & FERR_NF_FBD_ERR_MASK;
		errnum = FUNC16(&errors,
					FUNC0(ferr_nf_fbd_name));
		specific = FUNC1(ferr_nf_fbd_name, errnum);

		/* Clear the error bit */
		FUNC19(pvt->pci_dev_16_2_fsb_err_regs,
				       FERR_GLOBAL_LO, value);

		FUNC17(pvt->pci_dev_16_1_fsb_addr_map,
			REDMEMA, &syndrome);

		branch = (FUNC2(value) == 2) ? 1 : 0;
		FUNC18(pvt->pci_dev_16_1_fsb_addr_map,
				     RECMEMA, &val16);
		bank = FUNC9(val16);
		rank = FUNC10(val16);

		FUNC17(pvt->pci_dev_16_1_fsb_addr_map,
				RECMEMB, &value);

		is_wr = FUNC12(value);
		cas = FUNC11(value);
		ras = FUNC13(value);

		FUNC17(pvt->pci_dev_16_1_fsb_addr_map,
				     REDMEMB, &value);

		channel = (branch << 1);
		if (FUNC3(value))
			channel++;

		/* Form out message */
		FUNC20(pvt->tmp_prt_buffer, PAGE_SIZE,
			"Corrected error (Branch=%d, Channel %d), "
			" DRAM-Bank=%d %s "
			"RAS=%d CAS=%d, CE Err=0x%lx, Syndrome=0x%08x(%s))",
			branch, channel,
			bank,
			is_wr ? "RDWR" : "RD",
			ras, cas,
			errors, syndrome, specific);

		/*
		 * Call the helper to output message
		 * NOTE: Errors are reported per-branch, and not per-channel
		 *	 Currently, we don't know how to identify the right
		 *	 channel.
		 */
		FUNC14(mci, rank, channel,
				      pvt->tmp_prt_buffer);
	}
	return;
}