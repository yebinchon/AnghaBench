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
typedef  scalar_t__ u32 ;
struct nes_hw_qp_wqe {int /*<<< orphan*/  wqe_words; } ;
struct ib_send_wr {int num_sge; TYPE_1__* sg_list; } ;
struct TYPE_2__ {int length; int lkey; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NES_DBG_IW_TX ; 
 scalar_t__ NES_IWARP_SQ_WQE_FRAG0_LOW_IDX ; 
 scalar_t__ NES_IWARP_SQ_WQE_LENGTH0_IDX ; 
 scalar_t__ NES_IWARP_SQ_WQE_STAG0_IDX ; 
 scalar_t__ NES_IWARP_SQ_WQE_TOTAL_PAYLOAD_IDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct nes_hw_qp_wqe *wqe, struct ib_send_wr *ib_wr, u32 uselkey)
{
	int sge_index;
	int total_payload_length = 0;
	for (sge_index = 0; sge_index < ib_wr->num_sge; sge_index++) {
		FUNC2(wqe->wqe_words, NES_IWARP_SQ_WQE_FRAG0_LOW_IDX+(sge_index*4),
			ib_wr->sg_list[sge_index].addr);
		FUNC1(wqe->wqe_words, NES_IWARP_SQ_WQE_LENGTH0_IDX + (sge_index*4),
			ib_wr->sg_list[sge_index].length);
		if (uselkey)
			FUNC1(wqe->wqe_words, NES_IWARP_SQ_WQE_STAG0_IDX + (sge_index*4),
						(ib_wr->sg_list[sge_index].lkey));
		else
			FUNC1(wqe->wqe_words, NES_IWARP_SQ_WQE_STAG0_IDX + (sge_index*4), 0);

		total_payload_length += ib_wr->sg_list[sge_index].length;
	}
	FUNC0(NES_DBG_IW_TX, "UC UC UC, sending total_payload_length=%u \n",
			total_payload_length);
	FUNC1(wqe->wqe_words, NES_IWARP_SQ_WQE_TOTAL_PAYLOAD_IDX,
				total_payload_length);
}