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
struct pau_fpdu_info {int hdr_len; TYPE_1__* frags; scalar_t__ hdr_pbase; scalar_t__ data_len; struct nes_cqp_request* cqp_request; } ;
struct nes_vnic {scalar_t__ logical_port; struct nes_device* nesdev; } ;
struct nes_qp {int dummy; } ;
struct nes_hw_cqp_wqe {int /*<<< orphan*/  wqe_words; } ;
struct nes_device {int dummy; } ;
struct nes_cqp_request {int callback; int /*<<< orphan*/  refcount; int /*<<< orphan*/  cqp_callback; struct pau_fpdu_info* cqp_callback_pointer; struct nes_hw_cqp_wqe cqp_wqe; } ;
struct TYPE_2__ {int frag_len; int physaddr; } ;

/* Variables and functions */
 int NES_CQP_DOWNLOAD_SEGMENT ; 
 int NES_CQP_OP_LOGICAL_PORT_SHIFT ; 
 int /*<<< orphan*/  NES_CQP_WQE_DL_LENGTH_0_TOTAL_IDX ; 
 int /*<<< orphan*/  NES_CQP_WQE_DL_OPCODE_IDX ; 
 int /*<<< orphan*/  NES_NIC_SQ_WQE_FRAG0_HIGH_IDX ; 
 int /*<<< orphan*/  NES_NIC_SQ_WQE_FRAG0_LOW_IDX ; 
 int /*<<< orphan*/  NES_NIC_SQ_WQE_FRAG1_HIGH_IDX ; 
 int /*<<< orphan*/  NES_NIC_SQ_WQE_FRAG1_LOW_IDX ; 
 int /*<<< orphan*/  NES_NIC_SQ_WQE_FRAG2_HIGH_IDX ; 
 int /*<<< orphan*/  NES_NIC_SQ_WQE_FRAG2_LOW_IDX ; 
 int /*<<< orphan*/  NES_NIC_SQ_WQE_FRAG3_HIGH_IDX ; 
 int /*<<< orphan*/  NES_NIC_SQ_WQE_FRAG3_LOW_IDX ; 
 int /*<<< orphan*/  NES_NIC_SQ_WQE_FRAG4_HIGH_IDX ; 
 int /*<<< orphan*/  NES_NIC_SQ_WQE_FRAG4_LOW_IDX ; 
 int /*<<< orphan*/  NES_NIC_SQ_WQE_LENGTH_2_1_IDX ; 
 int /*<<< orphan*/  NES_NIC_SQ_WQE_LENGTH_4_3_IDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct nes_device*,struct nes_qp*,struct pau_fpdu_info**) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  nes_download_callback ; 
 int /*<<< orphan*/  FUNC3 (struct nes_hw_cqp_wqe*,struct nes_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct nes_vnic *nesvnic, struct nes_qp *nesqp)
{
	struct nes_device *nesdev = nesvnic->nesdev;
	struct pau_fpdu_info *fpdu_info;
	struct nes_hw_cqp_wqe *cqp_wqe;
	struct nes_cqp_request *cqp_request;
	u64 u64tmp;
	u32 u32tmp;
	int rc;

	while (1) {
		rc = FUNC1(nesdev, nesqp, &fpdu_info);
		if (fpdu_info == NULL)
			return rc;

		cqp_request = fpdu_info->cqp_request;
		cqp_wqe = &cqp_request->cqp_wqe;
		FUNC3(cqp_wqe, nesdev);
		FUNC5(cqp_wqe->wqe_words, NES_CQP_WQE_DL_OPCODE_IDX,
				    NES_CQP_DOWNLOAD_SEGMENT |
				    (((u32)nesvnic->logical_port) << NES_CQP_OP_LOGICAL_PORT_SHIFT));

		u32tmp = fpdu_info->hdr_len << 16;
		u32tmp |= fpdu_info->hdr_len + (u32)fpdu_info->data_len;
		FUNC5(cqp_wqe->wqe_words, NES_CQP_WQE_DL_LENGTH_0_TOTAL_IDX,
				    u32tmp);

		u32tmp = (fpdu_info->frags[1].frag_len << 16) | fpdu_info->frags[0].frag_len;
		FUNC5(cqp_wqe->wqe_words, NES_NIC_SQ_WQE_LENGTH_2_1_IDX,
				    u32tmp);

		u32tmp = (fpdu_info->frags[3].frag_len << 16) | fpdu_info->frags[2].frag_len;
		FUNC5(cqp_wqe->wqe_words, NES_NIC_SQ_WQE_LENGTH_4_3_IDX,
				    u32tmp);

		u64tmp = (u64)fpdu_info->hdr_pbase;
		FUNC5(cqp_wqe->wqe_words, NES_NIC_SQ_WQE_FRAG0_LOW_IDX,
				    FUNC2(u64tmp));
		FUNC5(cqp_wqe->wqe_words, NES_NIC_SQ_WQE_FRAG0_HIGH_IDX,
				    FUNC6(u64tmp >> 32));

		FUNC5(cqp_wqe->wqe_words, NES_NIC_SQ_WQE_FRAG1_LOW_IDX,
				    FUNC2(fpdu_info->frags[0].physaddr));
		FUNC5(cqp_wqe->wqe_words, NES_NIC_SQ_WQE_FRAG1_HIGH_IDX,
				    FUNC6(fpdu_info->frags[0].physaddr));

		FUNC5(cqp_wqe->wqe_words, NES_NIC_SQ_WQE_FRAG2_LOW_IDX,
				    FUNC2(fpdu_info->frags[1].physaddr));
		FUNC5(cqp_wqe->wqe_words, NES_NIC_SQ_WQE_FRAG2_HIGH_IDX,
				    FUNC6(fpdu_info->frags[1].physaddr));

		FUNC5(cqp_wqe->wqe_words, NES_NIC_SQ_WQE_FRAG3_LOW_IDX,
				    FUNC2(fpdu_info->frags[2].physaddr));
		FUNC5(cqp_wqe->wqe_words, NES_NIC_SQ_WQE_FRAG3_HIGH_IDX,
				    FUNC6(fpdu_info->frags[2].physaddr));

		FUNC5(cqp_wqe->wqe_words, NES_NIC_SQ_WQE_FRAG4_LOW_IDX,
				    FUNC2(fpdu_info->frags[3].physaddr));
		FUNC5(cqp_wqe->wqe_words, NES_NIC_SQ_WQE_FRAG4_HIGH_IDX,
				    FUNC6(fpdu_info->frags[3].physaddr));

		cqp_request->cqp_callback_pointer = fpdu_info;
		cqp_request->callback = 1;
		cqp_request->cqp_callback = nes_download_callback;

		FUNC0(&cqp_request->refcount, 1);
		FUNC4(nesdev, cqp_request);
	}

	return 0;
}