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
struct i5400_error_info {int /*<<< orphan*/  ferr_fat_fbd; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EDAC_MC_LABEL_LEN ; 
 unsigned long ERROR_FAT_MASK ; 
 unsigned long FERR_NF_UNCORRECTABLE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int,int,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,int,int,int,char*) ; 
 int /*<<< orphan*/ * error_name ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i5400_error_info*) ; 
 int FUNC6 (struct i5400_error_info*) ; 
 int FUNC7 (struct i5400_error_info*) ; 
 int FUNC8 (struct i5400_error_info*) ; 
 int FUNC9 (struct i5400_error_info*) ; 
 int FUNC10 (struct i5400_error_info*) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*,int,int,int,char*,int,int,char*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct mem_ctl_info *mci,
				    struct i5400_error_info *info,
				    unsigned long allErrors)
{
	char msg[EDAC_MC_LABEL_LEN + 1 + 90 + 80];
	int branch;
	int channel;
	int bank;
	int buf_id;
	int rank;
	int rdwr;
	int ras, cas;
	int errnum;
	char *type = NULL;

	if (!allErrors)
		return;		/* if no error, return now */

	if (allErrors &  ERROR_FAT_MASK)
		type = "FATAL";
	else if (allErrors & FERR_NF_UNCORRECTABLE)
		type = "NON-FATAL uncorrected";
	else
		type = "NON-FATAL recoverable";

	/* ONLY ONE of the possible error bits will be set, as per the docs */

	branch = FUNC3(info->ferr_fat_fbd);
	channel = branch;

	/* Use the NON-Recoverable macros to extract data */
	bank = FUNC5(info);
	rank = FUNC8(info);
	buf_id = FUNC6(info);
	rdwr = FUNC10(info);
	ras = FUNC9(info);
	cas = FUNC7(info);

	FUNC1("\t\tCSROW= %d  Channels= %d,%d  (Branch= %d "
		"DRAM Bank= %d Buffer ID = %d rdwr= %s ras= %d cas= %d)\n",
		rank, channel, channel + 1, branch >> 1, bank,
		buf_id, FUNC11(rdwr), ras, cas);

	/* Only 1 bit will be on */
	errnum = FUNC4(&allErrors, FUNC0(error_name));

	/* Form out message */
	FUNC12(msg, sizeof(msg),
		 "%s (Branch=%d DRAM-Bank=%d Buffer ID = %d RDWR=%s "
		 "RAS=%d CAS=%d %s Err=0x%lx (%s))",
		 type, branch >> 1, bank, buf_id, FUNC11(rdwr), ras, cas,
		 type, allErrors, error_name[errnum]);

	/* Call the helper to output message */
	FUNC2(mci, rank, channel, channel + 1, msg);
}