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
typedef  int u64 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct nes_pd {int pd_id; } ;
struct nes_hw_cqp_wqe {int /*<<< orphan*/ * wqe_words; } ;
struct nes_device {struct nes_adapter* nesadapter; } ;
struct nes_cqp_request {int waiting; scalar_t__ request_done; scalar_t__ major_code; int /*<<< orphan*/  minor_code; int /*<<< orphan*/  waitq; int /*<<< orphan*/  refcount; struct nes_hw_cqp_wqe cqp_wqe; } ;
struct nes_adapter {scalar_t__ free_4kpbl; int /*<<< orphan*/  pbl_lock; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ETIME ; 
 int NES_CQP_ALLOCATE_STAG ; 
 int NES_CQP_STAG_MR ; 
 int NES_CQP_STAG_PBL_BLK_SIZE ; 
 int NES_CQP_STAG_REM_ACC_EN ; 
 int NES_CQP_STAG_VA_TO ; 
 size_t NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX ; 
 size_t NES_CQP_STAG_WQE_LEN_LOW_IDX ; 
 int /*<<< orphan*/  NES_CQP_STAG_WQE_PA_LOW_IDX ; 
 size_t NES_CQP_STAG_WQE_PBL_BLK_COUNT_IDX ; 
 size_t NES_CQP_STAG_WQE_PBL_LEN_IDX ; 
 size_t NES_CQP_STAG_WQE_STAG_IDX ; 
 int /*<<< orphan*/  NES_CQP_STAG_WQE_VA_LOW_IDX ; 
 size_t NES_CQP_WQE_OPCODE_IDX ; 
 int /*<<< orphan*/  NES_DBG_MR ; 
 int /*<<< orphan*/  NES_EVENT_TIMEOUT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct nes_hw_cqp_wqe*,struct nes_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nes_device*,struct nes_cqp_request*) ; 
 struct nes_cqp_request* FUNC6 (struct nes_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct nes_device *nesdev, struct nes_pd *nespd,
			     u32 stag, u32 page_count)
{
	struct nes_hw_cqp_wqe *cqp_wqe;
	struct nes_cqp_request *cqp_request;
	unsigned long flags;
	int ret;
	struct nes_adapter *nesadapter = nesdev->nesadapter;
	u32 opcode = 0;
	u16 major_code;
	u64 region_length = page_count * PAGE_SIZE;


	cqp_request = FUNC6(nesdev);
	if (cqp_request == NULL) {
		FUNC3(NES_DBG_MR, "Failed to get a cqp_request.\n");
		return -ENOMEM;
	}
	FUNC3(NES_DBG_MR, "alloc_fast_reg_mr: page_count = %d, "
			      "region_length = %llu\n",
			      page_count, region_length);
	cqp_request->waiting = 1;
	cqp_wqe = &cqp_request->cqp_wqe;

	FUNC11(&nesadapter->pbl_lock, flags);
	if (nesadapter->free_4kpbl > 0) {
		nesadapter->free_4kpbl--;
		FUNC12(&nesadapter->pbl_lock, flags);
	} else {
		/* No 4kpbl's available: */
		FUNC12(&nesadapter->pbl_lock, flags);
		FUNC3(NES_DBG_MR, "Out of Pbls\n");
		FUNC5(nesdev, cqp_request);
		return -ENOMEM;
	}

	opcode = NES_CQP_ALLOCATE_STAG | NES_CQP_STAG_MR |
		 NES_CQP_STAG_PBL_BLK_SIZE | NES_CQP_STAG_VA_TO |
		 NES_CQP_STAG_REM_ACC_EN;
	/*
	 * The current OFED API does not support the zero based TO option.
	 * If added then need to changed the NES_CQP_STAG_VA* option.  Also,
	 * the API does not support that ability to have the MR set for local
	 * access only when created and not allow the SQ op to override. Given
	 * this the remote enable must be set here.
	 */

	FUNC4(cqp_wqe, nesdev);
	FUNC9(cqp_wqe->wqe_words, NES_CQP_WQE_OPCODE_IDX, opcode);
	FUNC9(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_PBL_BLK_COUNT_IDX, 1);

	cqp_wqe->wqe_words[NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX] =
			FUNC2((u32)(region_length >> 8) & 0xff000000);
	cqp_wqe->wqe_words[NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX] |=
			FUNC2(nespd->pd_id & 0x00007fff);

	FUNC9(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_STAG_IDX, stag);
	FUNC10(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_VA_LOW_IDX, 0);
	FUNC9(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_LEN_LOW_IDX, 0);
	FUNC10(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_PA_LOW_IDX, 0);
	FUNC9(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_PBL_LEN_IDX, (page_count * 8));
	cqp_wqe->wqe_words[NES_CQP_WQE_OPCODE_IDX] |= FUNC2(NES_CQP_STAG_PBL_BLK_SIZE);
	FUNC1();

	FUNC0(&cqp_request->refcount, 2);
	FUNC7(nesdev, cqp_request);

	/* Wait for CQP */
	ret = FUNC13(cqp_request->waitq,
				 (0 != cqp_request->request_done),
				 NES_EVENT_TIMEOUT);

	FUNC3(NES_DBG_MR, "Allocate STag 0x%08X completed, "
		  "wait_event_timeout ret = %u, CQP Major:Minor codes = "
		  "0x%04X:0x%04X.\n", stag, ret, cqp_request->major_code,
		  cqp_request->minor_code);
	major_code = cqp_request->major_code;
	FUNC8(nesdev, cqp_request);

	if (!ret || major_code) {
		FUNC11(&nesadapter->pbl_lock, flags);
		nesadapter->free_4kpbl++;
		FUNC12(&nesadapter->pbl_lock, flags);
	}

	if (!ret)
		return -ETIME;
	else if (major_code)
		return -EIO;
	return 0;
}