#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/ * cb; int /*<<< orphan*/  data; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {void* expires; } ;
struct nes_hw_mgt {int replenishing_rq; int rq_size; size_t rq_head; int qp_id; int /*<<< orphan*/  rq_lock; struct sk_buff** rx_skb; struct nes_hw_nic_rq_wqe* rq_vbase; } ;
struct nes_vnic_mgt {TYPE_2__ rq_wqes_timer; int /*<<< orphan*/  rx_skb_timer_running; int /*<<< orphan*/  rx_skbs_needed; TYPE_1__* nesvnic; struct nes_hw_mgt mgt; } ;
struct nes_rskb_cb {int maplen; scalar_t__ busaddr; } ;
struct nes_hw_nic_rq_wqe {void** wqe_words; } ;
struct nes_device {scalar_t__ regs; int /*<<< orphan*/  pcidev; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_3__ {int max_frame_size; int /*<<< orphan*/  netdev; struct nes_device* nesdev; } ;

/* Variables and functions */
 int HZ ; 
 size_t NES_NIC_RQ_WQE_FRAG0_HIGH_IDX ; 
 size_t NES_NIC_RQ_WQE_FRAG0_LOW_IDX ; 
 size_t NES_NIC_RQ_WQE_LENGTH_1_0_IDX ; 
 size_t NES_NIC_RQ_WQE_LENGTH_3_2_IDX ; 
 scalar_t__ NES_WQE_ALLOC ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int) ; 
 struct sk_buff* FUNC6 (int) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct nes_vnic_mgt *mgtvnic)
{
	unsigned long flags;
	dma_addr_t bus_address;
	struct sk_buff *skb;
	struct nes_hw_nic_rq_wqe *nic_rqe;
	struct nes_hw_mgt *nesmgt;
	struct nes_device *nesdev;
	struct nes_rskb_cb *cb;
	u32 rx_wqes_posted = 0;

	nesmgt = &mgtvnic->mgt;
	nesdev = mgtvnic->nesvnic->nesdev;
	FUNC9(&nesmgt->rq_lock, flags);
	if (nesmgt->replenishing_rq != 0) {
		if (((nesmgt->rq_size - 1) == FUNC2(&mgtvnic->rx_skbs_needed)) &&
		    (FUNC2(&mgtvnic->rx_skb_timer_running) == 0)) {
			FUNC3(&mgtvnic->rx_skb_timer_running, 1);
			FUNC10(&nesmgt->rq_lock, flags);
			mgtvnic->rq_wqes_timer.expires = jiffies + (HZ / 2);      /* 1/2 second */
			FUNC0(&mgtvnic->rq_wqes_timer);
		} else {
			FUNC10(&nesmgt->rq_lock, flags);
		}
		return;
	}
	nesmgt->replenishing_rq = 1;
	FUNC10(&nesmgt->rq_lock, flags);
	do {
		skb = FUNC6(mgtvnic->nesvnic->max_frame_size);
		if (skb) {
			skb->dev = mgtvnic->nesvnic->netdev;

			bus_address = FUNC8(nesdev->pcidev,
						     skb->data, mgtvnic->nesvnic->max_frame_size, PCI_DMA_FROMDEVICE);
			cb = (struct nes_rskb_cb *)&skb->cb[0];
			cb->busaddr = bus_address;
			cb->maplen = mgtvnic->nesvnic->max_frame_size;

			nic_rqe = &nesmgt->rq_vbase[mgtvnic->mgt.rq_head];
			nic_rqe->wqe_words[NES_NIC_RQ_WQE_LENGTH_1_0_IDX] =
				FUNC5(mgtvnic->nesvnic->max_frame_size);
			nic_rqe->wqe_words[NES_NIC_RQ_WQE_LENGTH_3_2_IDX] = 0;
			nic_rqe->wqe_words[NES_NIC_RQ_WQE_FRAG0_LOW_IDX] =
				FUNC5((u32)bus_address);
			nic_rqe->wqe_words[NES_NIC_RQ_WQE_FRAG0_HIGH_IDX] =
				FUNC5((u32)((u64)bus_address >> 32));
			nesmgt->rx_skb[nesmgt->rq_head] = skb;
			nesmgt->rq_head++;
			nesmgt->rq_head &= nesmgt->rq_size - 1;
			FUNC1(&mgtvnic->rx_skbs_needed);
			FUNC4();
			if (++rx_wqes_posted == 255) {
				FUNC7(nesdev->regs + NES_WQE_ALLOC, (rx_wqes_posted << 24) | nesmgt->qp_id);
				rx_wqes_posted = 0;
			}
		} else {
			FUNC9(&nesmgt->rq_lock, flags);
			if (((nesmgt->rq_size - 1) == FUNC2(&mgtvnic->rx_skbs_needed)) &&
			    (FUNC2(&mgtvnic->rx_skb_timer_running) == 0)) {
				FUNC3(&mgtvnic->rx_skb_timer_running, 1);
				FUNC10(&nesmgt->rq_lock, flags);
				mgtvnic->rq_wqes_timer.expires = jiffies + (HZ / 2);      /* 1/2 second */
				FUNC0(&mgtvnic->rq_wqes_timer);
			} else {
				FUNC10(&nesmgt->rq_lock, flags);
			}
			break;
		}
	} while (FUNC2(&mgtvnic->rx_skbs_needed));
	FUNC4();
	if (rx_wqes_posted)
		FUNC7(nesdev->regs + NES_WQE_ALLOC, (rx_wqes_posted << 24) | nesmgt->qp_id);
	nesmgt->replenishing_rq = 0;
}