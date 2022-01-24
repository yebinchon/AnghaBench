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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ max_ddbs; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;

/* Variables and functions */
 int ASD_NOTIFY_DOWN_COUNT ; 
 int ASD_NOTIFY_TIMEOUT ; 
 scalar_t__ LSEQ_MODE5_PAGE0_OFFSET ; 
 int LSEQ_MODE_SCRATCH_SIZE ; 
 int LSEQ_PAGE_SIZE ; 
 int LmM0INTEN_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ FUNC19 (int) ; 
 scalar_t__ FUNC20 (int) ; 
 scalar_t__ FUNC21 (int) ; 
 scalar_t__ FUNC22 (int) ; 
 scalar_t__ FUNC23 (int) ; 
 scalar_t__ FUNC24 (int) ; 
 scalar_t__ FUNC25 (int) ; 
 scalar_t__ FUNC26 (int) ; 
 scalar_t__ FUNC27 (int) ; 
 scalar_t__ FUNC28 (int) ; 
 scalar_t__ FUNC29 (int) ; 
 scalar_t__ FUNC30 (int) ; 
 scalar_t__ FUNC31 (int) ; 
 scalar_t__ FUNC32 (int) ; 
 scalar_t__ FUNC33 (int) ; 
 scalar_t__ FUNC34 (int) ; 
 scalar_t__ FUNC35 (int) ; 
 scalar_t__ FUNC36 (int) ; 
 scalar_t__ FUNC37 (int) ; 
 scalar_t__ FUNC38 (int) ; 
 scalar_t__ FUNC39 (int) ; 
 scalar_t__ FUNC40 (int) ; 
 scalar_t__ FUNC41 (int) ; 
 scalar_t__ FUNC42 (int) ; 
 scalar_t__ FUNC43 (int) ; 
 scalar_t__ FUNC44 (int) ; 
 scalar_t__ FUNC45 (int) ; 
 scalar_t__ FUNC46 (int) ; 
 scalar_t__ FUNC47 (int) ; 
 scalar_t__ FUNC48 (int) ; 
 scalar_t__ FUNC49 (int) ; 
 scalar_t__ FUNC50 (int) ; 
 scalar_t__ FUNC51 (int) ; 
 scalar_t__ FUNC52 (int) ; 
 scalar_t__ FUNC53 (int) ; 
 scalar_t__ FUNC54 (int) ; 
 scalar_t__ FUNC55 (int) ; 
 scalar_t__ FUNC56 (int) ; 
 scalar_t__ FUNC57 (int) ; 
 scalar_t__ FUNC58 (int) ; 
 scalar_t__ FUNC59 (int) ; 
 scalar_t__ FUNC60 (int) ; 
 scalar_t__ FUNC61 (int) ; 
 scalar_t__ FUNC62 (int) ; 
 scalar_t__ FUNC63 (int) ; 
 scalar_t__ FUNC64 (int) ; 
 scalar_t__ FUNC65 (int) ; 
 scalar_t__ FUNC66 (int) ; 
 scalar_t__ FUNC67 (int) ; 
 scalar_t__ FUNC68 (int) ; 
 scalar_t__ FUNC69 (int) ; 
 int /*<<< orphan*/  FUNC70 (struct asd_ha_struct*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC71 (struct asd_ha_struct*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC72 (struct asd_ha_struct*,scalar_t__,int) ; 
 scalar_t__ last_scb_site_no ; 
 int mode2_task ; 

__attribute__((used)) static void FUNC73(struct asd_ha_struct *asd_ha,  int lseq)
{
	int    i;
	u32    moffs;
	u16 ret_addr[] = {
		0xFFFF,		  /* mode 0 */
		0xFFFF,		  /* mode 1 */
		mode2_task,	  /* mode 2 */
		0,
		0xFFFF,		  /* mode 4/5 */
		0xFFFF,		  /* mode 4/5 */
	};

	/*
	 * Mode 0,1,2 and 4/5 have common field on page 0 for the first
	 * 14 bytes.
	 */
	for (i = 0; i < 3; i++) {
		moffs = i * LSEQ_MODE_SCRATCH_SIZE;
		FUNC72(asd_ha, FUNC52(lseq)+moffs,
				   ret_addr[i]);
		FUNC72(asd_ha, FUNC49(lseq)+moffs, 0);
		FUNC72(asd_ha, FUNC34(lseq)+moffs, 0);
		FUNC72(asd_ha, FUNC54(lseq)+moffs,0xFFFF);
		FUNC72(asd_ha, FUNC53(lseq)+moffs,0xFFFF);
		FUNC70(asd_ha, FUNC40(lseq)+moffs,0);
		FUNC72(asd_ha, FUNC6(lseq)+moffs,0);
	}
	/*
	 *  Mode 5 page 0 overlaps the same scratch page with Mode 0 page 3.
	 */
	FUNC72(asd_ha,
			 FUNC52(lseq)+LSEQ_MODE5_PAGE0_OFFSET,
			   ret_addr[5]);
	FUNC72(asd_ha,
			 FUNC49(lseq)+LSEQ_MODE5_PAGE0_OFFSET,0);
	FUNC72(asd_ha,
			 FUNC34(lseq)+LSEQ_MODE5_PAGE0_OFFSET, 0);
	FUNC72(asd_ha,
			 FUNC54(lseq)+LSEQ_MODE5_PAGE0_OFFSET,0xFFFF);
	FUNC72(asd_ha,
			 FUNC53(lseq)+LSEQ_MODE5_PAGE0_OFFSET,0xFFFF);
	FUNC70(asd_ha,
		         FUNC40(lseq)+LSEQ_MODE5_PAGE0_OFFSET,0);
	FUNC72(asd_ha,
		         FUNC6(lseq)+LSEQ_MODE5_PAGE0_OFFSET, 0);

	/* LSEQ Mode dependent 0, page 0 setup. */
	FUNC72(asd_ha, FUNC13(lseq),
			   (u16)asd_ha->hw_prof.max_ddbs);
	FUNC72(asd_ha, FUNC11(lseq), 0);
	FUNC72(asd_ha, FUNC50(lseq), 0);
	FUNC72(asd_ha, FUNC14(lseq),
			   (u16)last_scb_site_no+1);
	FUNC72(asd_ha, FUNC19(lseq),
			    (u16) ((LmM0INTEN_MASK & 0xFFFF0000) >> 16));
	FUNC72(asd_ha, FUNC19(lseq) + 2,
			    (u16) LmM0INTEN_MASK & 0xFFFF);
	FUNC70(asd_ha, FUNC26(lseq), 0);
	FUNC70(asd_ha, FUNC27(lseq), 0);
	FUNC70(asd_ha, FUNC51(lseq), 0);
	FUNC70(asd_ha, FUNC22(lseq), 0);
	FUNC72(asd_ha, FUNC61(lseq), 0);

	/* LSEQ mode dependent, mode 1, page 0 setup. */
	FUNC72(asd_ha, FUNC46(lseq), 0xFFFF);
	FUNC72(asd_ha, FUNC29(lseq), 0);
	FUNC72(asd_ha, FUNC18(lseq), 0);
	FUNC70(asd_ha, FUNC12(lseq), 0);
	FUNC70(asd_ha, FUNC69(lseq), 0);
	FUNC70(asd_ha, FUNC31(lseq), 0);
	FUNC70(asd_ha, FUNC30(lseq), 0);
	FUNC72(asd_ha, FUNC32(lseq), 0);

	/* LSEQ Mode dependent mode 2, page 0 setup */
	FUNC72(asd_ha, FUNC44(lseq), 0);
	FUNC72(asd_ha, FUNC43(lseq), 0);
	FUNC72(asd_ha, FUNC57(lseq), 0);
	FUNC72(asd_ha, FUNC21(lseq), 0);
	FUNC72(asd_ha, FUNC4(lseq), 0);
	FUNC70(asd_ha, FUNC42(lseq), 0);

	/* LSEQ Mode dependent, mode 4/5, page 0 setup. */
	FUNC70(asd_ha, FUNC60(lseq), 0);
	FUNC70(asd_ha, FUNC58(lseq), 0);
	FUNC72(asd_ha, FUNC45(lseq), 0xFFFF);
	FUNC70(asd_ha, FUNC25(lseq), 0);
	FUNC70(asd_ha, FUNC59(lseq), 0);
	FUNC70(asd_ha, FUNC55(lseq), 0);
	FUNC70(asd_ha, FUNC24(lseq), 0);
	FUNC70(asd_ha, FUNC38(lseq), 0);
	FUNC72(asd_ha, FUNC39(lseq), 0);
	/*
	 * Set the desired interval between transmissions of the NOTIFY
	 * (ENABLE SPINUP) primitive.  Must be initilized to val - 1.
	 */
	FUNC72(asd_ha, FUNC37(lseq),
			   ASD_NOTIFY_TIMEOUT - 1);
	/* No delay for the first NOTIFY to be sent to the attached target. */
	FUNC72(asd_ha, FUNC35(lseq),
			   ASD_NOTIFY_DOWN_COUNT);
	FUNC72(asd_ha, FUNC36(lseq),
			   ASD_NOTIFY_DOWN_COUNT);

	/* LSEQ Mode dependent, mode 0 and 1, page 1 setup. */
	for (i = 0; i < 2; i++)	{
		int j;
		/* Start from Page 1 of Mode 0 and 1. */
		moffs = LSEQ_PAGE_SIZE + i*LSEQ_MODE_SCRATCH_SIZE;
		/* All the fields of page 1 can be intialized to 0. */
		for (j = 0; j < LSEQ_PAGE_SIZE; j += 4)
			FUNC71(asd_ha, FUNC0(lseq)+moffs+j,0);
	}

	/* LSEQ Mode dependent, mode 2, page 1 setup. */
	FUNC71(asd_ha, FUNC20(lseq), 0);
	FUNC71(asd_ha, FUNC9(lseq), 0);
	FUNC71(asd_ha, FUNC28(lseq), 0);

	/* LSEQ Mode dependent, mode 4/5, page 1. */
	for (i = 0; i < LSEQ_PAGE_SIZE; i+=4)
		FUNC71(asd_ha, FUNC15(lseq)+i, 0);
	FUNC70(asd_ha, FUNC15(lseq), 0xFF);
	FUNC70(asd_ha, FUNC16(lseq), 0xFF);
	FUNC70(asd_ha, FUNC16(lseq)+1,0xFF);
	FUNC70(asd_ha, FUNC16(lseq)+2,0xFF);
	FUNC70(asd_ha, FUNC17(lseq), 0xFF);
	FUNC70(asd_ha, FUNC17(lseq)+1, 0xFF);
	FUNC70(asd_ha, FUNC17(lseq)+2, 0xFF);
	FUNC71(asd_ha, FUNC5(lseq), 0xFFFFFFFF);

	/* LSEQ Mode dependent, mode 0, page 2 setup. */
	FUNC71(asd_ha, FUNC65(lseq), 0);
	FUNC70(asd_ha, FUNC7(lseq), 0);
	FUNC72(asd_ha, FUNC63(lseq), 0);
	FUNC70(asd_ha, FUNC64(lseq), 0);
	FUNC70(asd_ha, FUNC62(lseq), 0);

	/* LSEQ Mode Dependent 1, page 2 setup. */
	FUNC71(asd_ha, FUNC68(lseq), 0);
	FUNC71(asd_ha, FUNC68(lseq)+4, 0);
	FUNC71(asd_ha, FUNC41(lseq), 0);
	FUNC71(asd_ha, FUNC66(lseq), 0);
	FUNC71(asd_ha, FUNC23(lseq), 0);

	/* LSEQ Mode Dependent 2, page 2 setup. */
	/* The LmSEQ_STP_SHUTDOWN_TIMER_TERM_TS is IGNORED by the sequencer,
	 * i.e. always 0. */
	FUNC71(asd_ha, FUNC67(lseq),0);
	FUNC71(asd_ha, FUNC2(lseq), 0);
	FUNC71(asd_ha, FUNC1(lseq), 0);
	FUNC71(asd_ha, FUNC10(lseq), 0);
	FUNC71(asd_ha,FUNC56(lseq),0);
	FUNC71(asd_ha, FUNC33(lseq), 0);

	/* LSEQ Mode Dependent 4/5, page 2 setup. */
	FUNC71(asd_ha, FUNC3(lseq), 0);
	FUNC71(asd_ha, FUNC48(lseq), 0);
	FUNC71(asd_ha, FUNC47(lseq), 0);
	FUNC71(asd_ha, FUNC8(lseq),	0);
}