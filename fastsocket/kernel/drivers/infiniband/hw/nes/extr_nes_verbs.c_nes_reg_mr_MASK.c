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
typedef  int uint ;
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct nes_root_vpbl {scalar_t__ pbl_pbase; int /*<<< orphan*/  pbl_vbase; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct nes_pd {int pd_id; } ;
struct nes_hw_cqp_wqe {int /*<<< orphan*/ * wqe_words; } ;
struct nes_device {int /*<<< orphan*/  pcidev; struct nes_adapter* nesadapter; } ;
struct nes_cqp_request {int waiting; scalar_t__ request_done; int major_code; int /*<<< orphan*/  minor_code; int /*<<< orphan*/  waitq; int /*<<< orphan*/  refcount; struct nes_hw_cqp_wqe cqp_wqe; } ;
struct nes_adapter {int free_256pbl; int free_4kpbl; int max_4kpbl; int /*<<< orphan*/  pbl_lock; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ETIME ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_MW_BIND ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int NES_CQP_REGISTER_STAG ; 
 int NES_CQP_STAG_MR ; 
 int NES_CQP_STAG_PBL_BLK_SIZE ; 
 int NES_CQP_STAG_REM_ACC_EN ; 
 int NES_CQP_STAG_RIGHTS_LOCAL_READ ; 
 int NES_CQP_STAG_RIGHTS_LOCAL_WRITE ; 
 int NES_CQP_STAG_RIGHTS_REMOTE_READ ; 
 int NES_CQP_STAG_RIGHTS_REMOTE_WRITE ; 
 int NES_CQP_STAG_RIGHTS_WINDOW_BIND ; 
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct nes_hw_cqp_wqe*,struct nes_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nes_device*,struct nes_cqp_request*) ; 
 struct nes_cqp_request* FUNC6 (struct nes_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct nes_device*,struct nes_root_vpbl*,struct nes_root_vpbl*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct nes_device *nesdev, struct nes_pd *nespd,
		u32 stag, u64 region_length, struct nes_root_vpbl *root_vpbl,
		dma_addr_t single_buffer, u16 pbl_count_4k,
		u16 residual_page_count_4k, int acc, u64 *iova_start,
		u16 *actual_pbl_cnt, u8 *used_4k_pbls)
{
	struct nes_hw_cqp_wqe *cqp_wqe;
	struct nes_cqp_request *cqp_request;
	unsigned long flags;
	int ret;
	struct nes_adapter *nesadapter = nesdev->nesadapter;
	uint pg_cnt = 0;
	u16 pbl_count_256 = 0;
	u16 pbl_count = 0;
	u8  use_256_pbls = 0;
	u8  use_4k_pbls = 0;
	u16 use_two_level = (pbl_count_4k > 1) ? 1 : 0;
	struct nes_root_vpbl new_root = { 0, NULL, NULL };
	u32 opcode = 0;
	u16 major_code;

	/* Register the region with the adapter */
	cqp_request = FUNC6(nesdev);
	if (cqp_request == NULL) {
		FUNC3(NES_DBG_MR, "Failed to get a cqp_request.\n");
		return -ENOMEM;
	}
	cqp_request->waiting = 1;
	cqp_wqe = &cqp_request->cqp_wqe;

	if (pbl_count_4k) {
		FUNC13(&nesadapter->pbl_lock, flags);

		pg_cnt = ((pbl_count_4k - 1) * 512) + residual_page_count_4k;
		pbl_count_256 = (pg_cnt + 31) / 32;
		if (pg_cnt <= 32) {
			if (pbl_count_256 <= nesadapter->free_256pbl)
				use_256_pbls = 1;
			else if (pbl_count_4k <= nesadapter->free_4kpbl)
				use_4k_pbls = 1;
		} else if (pg_cnt <= 2048) {
			if (((pbl_count_4k + use_two_level) <= nesadapter->free_4kpbl) &&
			    (nesadapter->free_4kpbl > (nesadapter->max_4kpbl >> 1))) {
				use_4k_pbls = 1;
			} else if ((pbl_count_256 + 1) <= nesadapter->free_256pbl) {
				use_256_pbls = 1;
				use_two_level = 1;
			} else if ((pbl_count_4k + use_two_level) <= nesadapter->free_4kpbl) {
				use_4k_pbls = 1;
			}
		} else {
			if ((pbl_count_4k + 1) <= nesadapter->free_4kpbl)
				use_4k_pbls = 1;
		}

		if (use_256_pbls) {
			pbl_count = pbl_count_256;
			nesadapter->free_256pbl -= pbl_count + use_two_level;
		} else if (use_4k_pbls) {
			pbl_count =  pbl_count_4k;
			nesadapter->free_4kpbl -= pbl_count + use_two_level;
		} else {
			FUNC14(&nesadapter->pbl_lock, flags);
			FUNC3(NES_DBG_MR, "Out of Pbls\n");
			FUNC5(nesdev, cqp_request);
			return -ENOMEM;
		}

		FUNC14(&nesadapter->pbl_lock, flags);
	}

	if (use_256_pbls && use_two_level) {
		if (FUNC10(nesdev, root_vpbl, &new_root, pbl_count_4k) == 1) {
			if (new_root.pbl_pbase != 0)
				root_vpbl = &new_root;
		} else {
			FUNC13(&nesadapter->pbl_lock, flags);
			nesadapter->free_256pbl += pbl_count_256 + use_two_level;
			use_256_pbls = 0;

			if (pbl_count_4k == 1)
				use_two_level = 0;
			pbl_count = pbl_count_4k;

			if ((pbl_count_4k + use_two_level) <= nesadapter->free_4kpbl) {
				nesadapter->free_4kpbl -= pbl_count + use_two_level;
				use_4k_pbls = 1;
			}
			FUNC14(&nesadapter->pbl_lock, flags);

			if (use_4k_pbls == 0)
				return -ENOMEM;
		}
	}

	opcode = NES_CQP_REGISTER_STAG | NES_CQP_STAG_RIGHTS_LOCAL_READ |
					NES_CQP_STAG_VA_TO | NES_CQP_STAG_MR;
	if (acc & IB_ACCESS_LOCAL_WRITE)
		opcode |= NES_CQP_STAG_RIGHTS_LOCAL_WRITE;
	if (acc & IB_ACCESS_REMOTE_WRITE)
		opcode |= NES_CQP_STAG_RIGHTS_REMOTE_WRITE | NES_CQP_STAG_REM_ACC_EN;
	if (acc & IB_ACCESS_REMOTE_READ)
		opcode |= NES_CQP_STAG_RIGHTS_REMOTE_READ | NES_CQP_STAG_REM_ACC_EN;
	if (acc & IB_ACCESS_MW_BIND)
		opcode |= NES_CQP_STAG_RIGHTS_WINDOW_BIND | NES_CQP_STAG_REM_ACC_EN;

	FUNC4(cqp_wqe, nesdev);
	FUNC11(cqp_wqe->wqe_words, NES_CQP_WQE_OPCODE_IDX, opcode);
	FUNC12(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_VA_LOW_IDX, *iova_start);
	FUNC11(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_LEN_LOW_IDX, region_length);

	cqp_wqe->wqe_words[NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX] =
			FUNC2((u32)(region_length >> 8) & 0xff000000);
	cqp_wqe->wqe_words[NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX] |=
			FUNC2(nespd->pd_id & 0x00007fff);
	FUNC11(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_STAG_IDX, stag);

	if (pbl_count == 0) {
		FUNC12(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_PA_LOW_IDX, single_buffer);
	} else {
		FUNC12(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_PA_LOW_IDX, root_vpbl->pbl_pbase);
		FUNC11(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_PBL_BLK_COUNT_IDX, pbl_count);
		FUNC11(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_PBL_LEN_IDX, (pg_cnt * 8));

		if (use_4k_pbls)
			cqp_wqe->wqe_words[NES_CQP_WQE_OPCODE_IDX] |= FUNC2(NES_CQP_STAG_PBL_BLK_SIZE);
	}
	FUNC1();

	FUNC0(&cqp_request->refcount, 2);
	FUNC7(nesdev, cqp_request);

	/* Wait for CQP */
	ret = FUNC15(cqp_request->waitq, (0 != cqp_request->request_done),
			NES_EVENT_TIMEOUT);
	FUNC3(NES_DBG_MR, "Register STag 0x%08X completed, wait_event_timeout ret = %u,"
			" CQP Major:Minor codes = 0x%04X:0x%04X.\n",
			stag, ret, cqp_request->major_code, cqp_request->minor_code);
	major_code = cqp_request->major_code;
	FUNC8(nesdev, cqp_request);

	if ((!ret || major_code) && pbl_count != 0) {
		FUNC13(&nesadapter->pbl_lock, flags);
		if (use_256_pbls)
			nesadapter->free_256pbl += pbl_count + use_two_level;
		else if (use_4k_pbls)
			nesadapter->free_4kpbl += pbl_count + use_two_level;
		FUNC14(&nesadapter->pbl_lock, flags);
	}
	if (new_root.pbl_pbase)
		FUNC9(nesdev->pcidev, 512, new_root.pbl_vbase,
				    new_root.pbl_pbase);

	if (!ret)
		return -ETIME;
	else if (major_code)
		return -EIO;

	*actual_pbl_cnt = pbl_count + use_two_level;
	*used_4k_pbls = use_4k_pbls;
	return 0;
}