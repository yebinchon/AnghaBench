#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
typedef  size_t u16 ;
struct sk_buff {int /*<<< orphan*/ * cb; } ;
struct TYPE_7__ {size_t rq_head; size_t rq_tail; int rq_size; size_t sq_head; size_t sq_tail; int sq_size; int qp_id; struct sk_buff** tx_skb; int /*<<< orphan*/  first_frag_overflow; struct nes_hw_nic_sq_wqe* sq_vbase; struct sk_buff** rx_skb; } ;
struct TYPE_5__ {int cq_number; scalar_t__ cq_size; } ;
struct nes_vnic {int /*<<< orphan*/  nic_pbase; int /*<<< orphan*/  nic_vbase; int /*<<< orphan*/  nic_mem_size; TYPE_3__ nic; TYPE_1__ nic_cq; struct nes_device* nesdev; } ;
struct nes_rskb_cb {scalar_t__ maplen; scalar_t__ busaddr; } ;
struct nes_hw_nic_sq_wqe {int /*<<< orphan*/ * wqe_words; } ;
struct nes_hw_cqp_wqe {int /*<<< orphan*/  wqe_words; } ;
struct TYPE_8__ {int sq_head; int sq_size; int qp_id; int sq_tail; int /*<<< orphan*/  waitq; int /*<<< orphan*/  lock; struct nes_hw_cqp_wqe* sq_vbase; } ;
struct nes_device {int /*<<< orphan*/  pcidev; TYPE_4__ cqp; scalar_t__ regs; scalar_t__ nic_ceq_index; TYPE_2__* nesadapter; } ;
typedef  scalar_t__ dma_addr_t ;
typedef  scalar_t__ __le16 ;
struct TYPE_6__ {scalar_t__ allow_unaligned_fpdus; } ;

/* Variables and functions */
 int NES_CQP_DESTROY_CQ ; 
 int NES_CQP_DESTROY_QP ; 
 int NES_CQP_QP_TYPE_NIC ; 
 int /*<<< orphan*/  NES_CQP_WQE_ID_IDX ; 
 int /*<<< orphan*/  NES_CQP_WQE_OPCODE_IDX ; 
 int /*<<< orphan*/  NES_DBG_SHUTDOWN ; 
 int /*<<< orphan*/  NES_EVENT_TIMEOUT ; 
 int /*<<< orphan*/  NES_IDX_WQM_CONFIG0 ; 
 size_t NES_NIC_SQ_WQE_FRAG0_HIGH_IDX ; 
 size_t NES_NIC_SQ_WQE_FRAG0_LOW_IDX ; 
 size_t NES_NIC_SQ_WQE_LENGTH_0_TAG_IDX ; 
 scalar_t__ NES_WQE_ALLOC ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct nes_vnic*) ; 
 int /*<<< orphan*/  FUNC6 (struct nes_hw_cqp_wqe*,struct nes_device*) ; 
 int FUNC7 (struct nes_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nes_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC16 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC18(struct nes_vnic *nesvnic)
{
	u64 u64temp;
	dma_addr_t bus_address;
	struct nes_device *nesdev = nesvnic->nesdev;
	struct nes_hw_cqp_wqe *cqp_wqe;
	struct nes_hw_nic_sq_wqe *nic_sqe;
	__le16 *wqe_fragment_length;
	u16  wqe_fragment_index;
	u32 cqp_head;
	u32 wqm_cfg0;
	unsigned long flags;
	struct sk_buff *rx_skb;
	struct nes_rskb_cb *cb;
	int ret;

	if (nesdev->nesadapter->allow_unaligned_fpdus)
		FUNC5(nesvnic);

	/* clear wqe stall before destroying NIC QP */
	wqm_cfg0 = FUNC7(nesdev, NES_IDX_WQM_CONFIG0);
	FUNC9(nesdev, NES_IDX_WQM_CONFIG0, wqm_cfg0 & 0xFFFF7FFF);

	/* Free remaining NIC receive buffers */
	while (nesvnic->nic.rq_head != nesvnic->nic.rq_tail) {
		rx_skb = nesvnic->nic.rx_skb[nesvnic->nic.rq_tail];
		cb = (struct nes_rskb_cb *)&rx_skb->cb[0];
		FUNC12(nesdev->pcidev, cb->busaddr, cb->maplen,
			PCI_DMA_FROMDEVICE);

		FUNC1(nesvnic->nic.rx_skb[nesvnic->nic.rq_tail++]);
		nesvnic->nic.rq_tail &= (nesvnic->nic.rq_size - 1);
	}

	/* Free remaining NIC transmit buffers */
	while (nesvnic->nic.sq_head != nesvnic->nic.sq_tail) {
		nic_sqe = &nesvnic->nic.sq_vbase[nesvnic->nic.sq_tail];
		wqe_fragment_index = 1;
		wqe_fragment_length = (__le16 *)
			&nic_sqe->wqe_words[NES_NIC_SQ_WQE_LENGTH_0_TAG_IDX];
		/* bump past the vlan tag */
		wqe_fragment_length++;
		if (FUNC2(wqe_fragment_length[wqe_fragment_index]) != 0) {
			u64temp = (u64)FUNC3(
				nic_sqe->wqe_words[NES_NIC_SQ_WQE_FRAG0_LOW_IDX+
				wqe_fragment_index*2]);
			u64temp += ((u64)FUNC3(
				nic_sqe->wqe_words[NES_NIC_SQ_WQE_FRAG0_HIGH_IDX
				+ wqe_fragment_index*2]))<<32;
			bus_address = (dma_addr_t)u64temp;
			if (FUNC16(nesvnic->nic.sq_tail,
					nesvnic->nic.first_frag_overflow)) {
				FUNC12(nesdev->pcidev,
						bus_address,
						FUNC2(wqe_fragment_length[
							wqe_fragment_index++]),
						PCI_DMA_TODEVICE);
			}
			for (; wqe_fragment_index < 5; wqe_fragment_index++) {
				if (wqe_fragment_length[wqe_fragment_index]) {
					u64temp = FUNC3(
						nic_sqe->wqe_words[
						NES_NIC_SQ_WQE_FRAG0_LOW_IDX+
						wqe_fragment_index*2]);
					u64temp += ((u64)FUNC3(
						nic_sqe->wqe_words[
						NES_NIC_SQ_WQE_FRAG0_HIGH_IDX+
						wqe_fragment_index*2]))<<32;
					bus_address = (dma_addr_t)u64temp;
					FUNC11(nesdev->pcidev,
							bus_address,
							FUNC2(
							wqe_fragment_length[
							wqe_fragment_index]),
							PCI_DMA_TODEVICE);
				} else
					break;
			}
		}
		if (nesvnic->nic.tx_skb[nesvnic->nic.sq_tail])
			FUNC1(
				nesvnic->nic.tx_skb[nesvnic->nic.sq_tail]);

		nesvnic->nic.sq_tail = (nesvnic->nic.sq_tail + 1)
					& (nesvnic->nic.sq_size - 1);
	}

	FUNC14(&nesdev->cqp.lock, flags);

	/* Destroy NIC QP */
	cqp_head = nesdev->cqp.sq_head;
	cqp_wqe = &nesdev->cqp.sq_vbase[cqp_head];
	FUNC6(cqp_wqe, nesdev);

	FUNC13(cqp_wqe->wqe_words, NES_CQP_WQE_OPCODE_IDX,
		(NES_CQP_DESTROY_QP | NES_CQP_QP_TYPE_NIC));
	FUNC13(cqp_wqe->wqe_words, NES_CQP_WQE_ID_IDX,
		nesvnic->nic.qp_id);

	if (++cqp_head >= nesdev->cqp.sq_size)
		cqp_head = 0;

	cqp_wqe = &nesdev->cqp.sq_vbase[cqp_head];

	/* Destroy NIC CQ */
	FUNC6(cqp_wqe, nesdev);
	FUNC13(cqp_wqe->wqe_words, NES_CQP_WQE_OPCODE_IDX,
		(NES_CQP_DESTROY_CQ | ((u32)nesvnic->nic_cq.cq_size << 16)));
	FUNC13(cqp_wqe->wqe_words, NES_CQP_WQE_ID_IDX,
		(nesvnic->nic_cq.cq_number | ((u32)nesdev->nic_ceq_index << 16)));

	if (++cqp_head >= nesdev->cqp.sq_size)
		cqp_head = 0;

	nesdev->cqp.sq_head = cqp_head;
	FUNC0();

	/* Ring doorbell (2 WQEs) */
	FUNC8(nesdev->regs+NES_WQE_ALLOC, 0x02800000 | nesdev->cqp.qp_id);

	FUNC15(&nesdev->cqp.lock, flags);
	FUNC4(NES_DBG_SHUTDOWN, "Waiting for CQP, cqp_head=%u, cqp.sq_head=%u,"
			" cqp.sq_tail=%u, cqp.sq_size=%u\n",
			cqp_head, nesdev->cqp.sq_head,
			nesdev->cqp.sq_tail, nesdev->cqp.sq_size);

	ret = FUNC17(nesdev->cqp.waitq, (nesdev->cqp.sq_tail == cqp_head),
			NES_EVENT_TIMEOUT);

	FUNC4(NES_DBG_SHUTDOWN, "Destroy NIC QP returned, wait_event_timeout ret = %u, cqp_head=%u,"
			" cqp.sq_head=%u, cqp.sq_tail=%u\n",
			ret, cqp_head, nesdev->cqp.sq_head, nesdev->cqp.sq_tail);
	if (!ret) {
		FUNC4(NES_DBG_SHUTDOWN, "NIC QP%u destroy timeout expired\n",
				nesvnic->nic.qp_id);
	}

	FUNC10(nesdev->pcidev, nesvnic->nic_mem_size, nesvnic->nic_vbase,
			nesvnic->nic_pbase);

	/* restore old wqm_cfg0 value */
	FUNC9(nesdev, NES_IDX_WQM_CONFIG0, wqm_cfg0);
}