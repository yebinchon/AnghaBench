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
typedef  int u32 ;
struct sbridge_pvt {int** csrow_map; } ;
struct mem_ctl_info {struct sbridge_pvt* pvt_info; } ;
struct mce {scalar_t__ addr; int /*<<< orphan*/  cpu; int /*<<< orphan*/  status; int /*<<< orphan*/  mcgstatus; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mem_ctl_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 long FUNC5 (long*,int /*<<< orphan*/ ) ; 
 struct mem_ctl_info* FUNC6 (int) ; 
 int FUNC7 (struct mem_ctl_info*,scalar_t__,int*,long*,int*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char*,int,char*,char*,char*,char*,char*,int /*<<< orphan*/ ,int,int,int,long long,int,long,long,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(struct mem_ctl_info *mci,
				    const struct mce *m)
{
	struct mem_ctl_info *new_mci;
	struct sbridge_pvt *pvt = mci->pvt_info;
	char *type, *optype, *msg, *recoverable_msg;
	bool ripv = FUNC0(m->mcgstatus, 0, 0);
	bool overflow = FUNC0(m->status, 62, 62);
	bool uncorrected_error = FUNC0(m->status, 61, 61);
	bool recoverable = FUNC0(m->status, 56, 56);
	u32 core_err_cnt = FUNC0(m->status, 38, 52);
	u32 mscod = FUNC0(m->status, 16, 31);
	u32 errcode = FUNC0(m->status, 0, 15);
	u32 channel = FUNC0(m->status, 0, 3);
	u32 optypenum = FUNC0(m->status, 4, 6);
	long channel_mask, first_channel;
	u8  rank, socket;
	int csrow, rc, dimm;
	char *area_type = "Unknown";

	if (ripv)
		type = "NON_FATAL";
	else
		type = "FATAL";

	/*
	 * According with Table 15-9 of the Intel Archictecture spec vol 3A,
	 * memory errors should fit in this mask:
	 *	000f 0000 1mmm cccc (binary)
	 * where:
	 *	f = Correction Report Filtering Bit. If 1, subsequent errors
	 *	    won't be shown
	 *	mmm = error type
	 *	cccc = channel
	 * If the mask doesn't match, report an error to the parsing logic
	 */
	if (! ((errcode & 0xef80) == 0x80)) {
		optype = "Can't parse: it is not a mem";
	} else {
		switch (optypenum) {
		case 0:
			optype = "generic undef request";
			break;
		case 1:
			optype = "memory read";
			break;
		case 2:
			optype = "memory write";
			break;
		case 3:
			optype = "addr/cmd";
			break;
		case 4:
			optype = "memory scrubbing";
			break;
		default:
			optype = "reserved";
			break;
		}
	}

	rc = FUNC7(mci, m->addr, &socket,
				   &channel_mask, &rank, area_type);
	if (rc < 0)
		return;
	new_mci = FUNC6(socket);
	if (!new_mci) {
		FUNC2(mci, "Error: socket got corrupted!");
		return;
	}
	mci = new_mci;
	pvt = mci->pvt_info;

	first_channel = FUNC5(&channel_mask, NUM_CHANNELS);

	if (rank < 4)
		dimm = 0;
	else if (rank < 8)
		dimm = 1;
	else
		dimm = 2;

	csrow = pvt->csrow_map[first_channel][dimm];

	if (uncorrected_error && recoverable)
		recoverable_msg = " recoverable";
	else
		recoverable_msg = "";

	/*
	 * FIXME: What should we do with "channel" information on mcelog?
	 * Probably, we can just discard it, as the channel information
	 * comes from the get_memory_error_data() address decoding
	 */
	msg = FUNC8(GFP_ATOMIC,
			"%d %s error(s): %s on %s area %s%s: cpu=%d Err=%04x:%04x (ch=%d), "
			"addr = 0x%08llx => socket=%d, Channel=%ld(mask=%ld), rank=%d\n",
			core_err_cnt,
			area_type,
			optype,
			type,
			recoverable_msg,
			overflow ? "OVERFLOW" : "",
			m->cpu,
			mscod, errcode,
			channel,		/* 1111b means not specified */
			(long long) m->addr,
			socket,
			first_channel,		/* This is the real channel on SB */
			channel_mask,
			rank);

	FUNC1("%s", msg);

	/* Call the helper to output message */
	if (uncorrected_error)
		FUNC4(mci, csrow, 0, 0, msg);
	else
		FUNC3(mci, csrow, 0, msg);

	FUNC9(msg);
}