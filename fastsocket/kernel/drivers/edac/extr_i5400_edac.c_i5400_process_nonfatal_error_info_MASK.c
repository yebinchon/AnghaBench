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
struct mem_ctl_info {int dummy; } ;
struct i5400_error_info {int ferr_nf_fbd; int /*<<< orphan*/  redmemb; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EDAC_MC_LABEL_LEN ; 
 unsigned long ERROR_NF_CORRECTABLE ; 
 unsigned long ERROR_NF_RECOVERABLE ; 
 unsigned long ERROR_NF_UNCORRECTABLE ; 
 int FERR_NF_MASK ; 
 int /*<<< orphan*/  KERN_EMERG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*,int,int,char*) ; 
 int /*<<< orphan*/ * error_name ; 
 int FUNC4 (int) ; 
 int FUNC5 (unsigned long*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct mem_ctl_info*,int /*<<< orphan*/ ,char*,int,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mem_ctl_info*,struct i5400_error_info*,unsigned long) ; 
 char* FUNC9 (int) ; 
 int FUNC10 (struct i5400_error_info*) ; 
 int FUNC11 (struct i5400_error_info*) ; 
 int FUNC12 (struct i5400_error_info*) ; 
 int FUNC13 (struct i5400_error_info*) ; 
 int FUNC14 (struct i5400_error_info*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int,int,char*,int,int,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct mem_ctl_info *mci,
					struct i5400_error_info *info)
{
	char msg[EDAC_MC_LABEL_LEN + 1 + 90 + 80];
	unsigned long allErrors;
	int branch;
	int channel;
	int bank;
	int rank;
	int rdwr;
	int ras, cas;
	int errnum;

	/* mask off the Error bits that are possible */
	allErrors = FUNC6(info->ferr_nf_fbd & FERR_NF_MASK);
	if (!allErrors)
		return;		/* if no error, return now */

	/* ONLY ONE of the possible error bits will be set, as per the docs */

	if (allErrors & (ERROR_NF_UNCORRECTABLE | ERROR_NF_RECOVERABLE)) {
		FUNC8(mci, info, allErrors);
		return;
	}

	/* Correctable errors */
	if (allErrors & ERROR_NF_CORRECTABLE) {
		FUNC2("\tCorrected bits= 0x%lx\n", allErrors);

		branch = FUNC4(info->ferr_nf_fbd);

		channel = 0;
		if (FUNC1(info->redmemb))
			channel = 1;

		/* Convert channel to be based from zero, instead of
		 * from branch base of 0 */
		channel += branch;

		bank = FUNC10(info);
		rank = FUNC12(info);
		rdwr = FUNC14(info);
		ras = FUNC13(info);
		cas = FUNC11(info);

		/* Only 1 bit will be on */
		errnum = FUNC5(&allErrors, FUNC0(error_name));

		FUNC2("\t\tCSROW= %d Channel= %d  (Branch %d "
			"DRAM Bank= %d rdwr= %s ras= %d cas= %d)\n",
			rank, channel, branch >> 1, bank,
			FUNC9(rdwr), ras, cas);

		/* Form out message */
		FUNC15(msg, sizeof(msg),
			 "Corrected error (Branch=%d DRAM-Bank=%d RDWR=%s "
			 "RAS=%d CAS=%d, CE Err=0x%lx (%s))",
			 branch >> 1, bank, FUNC9(rdwr), ras, cas,
			 allErrors, error_name[errnum]);

		/* Call the helper to output message */
		FUNC3(mci, rank, channel, msg);

		return;
	}

	/* Miscelaneous errors */
	errnum = FUNC5(&allErrors, FUNC0(error_name));

	branch = FUNC4(info->ferr_nf_fbd);

	FUNC7(mci, KERN_EMERG,
			"Non-Fatal misc error (Branch=%d Err=%#lx (%s))",
			branch >> 1, allErrors, error_name[errnum]);
}