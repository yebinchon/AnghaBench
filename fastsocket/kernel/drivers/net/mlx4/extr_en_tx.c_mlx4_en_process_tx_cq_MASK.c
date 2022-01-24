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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct mlx4_en_tx_ring {int size_mask; int cons; int last_nr_txbb; int size; TYPE_1__* tx_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  wake_queue; } ;
struct mlx4_en_priv {int cqe_factor; TYPE_2__ port_stats; int /*<<< orphan*/  port_up; struct mlx4_en_tx_ring* tx_ring; } ;
struct mlx4_cq {int cons_index; } ;
struct mlx4_en_cq {size_t ring; int size; struct mlx4_cqe* buf; struct mlx4_cq mcq; } ;
struct mlx4_cqe {int owner_sr_opcode; int /*<<< orphan*/  wqe_index; } ;
struct TYPE_3__ {scalar_t__ ts_requested; } ;

/* Variables and functions */
 int MLX4_CQE_OWNER_MASK ; 
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_cq*) ; 
 int FUNC3 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_cqe*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,size_t) ; 
 struct mlx4_en_priv* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct net_device *dev, struct mlx4_en_cq *cq)
{
	struct mlx4_en_priv *priv = FUNC7(dev);
	struct mlx4_cq *mcq = &cq->mcq;
	struct mlx4_en_tx_ring *ring = &priv->tx_ring[cq->ring];
	struct mlx4_cqe *cqe;
	u16 index;
	u16 new_index, ring_index, stamp_index;
	u32 txbbs_skipped = 0;
	u32 txbbs_stamp = 0;
	u32 cons_index = mcq->cons_index;
	int size = cq->size;
	u32 size_mask = ring->size_mask;
	struct mlx4_cqe *buf = cq->buf;
	int factor = priv->cqe_factor;
	u64 timestamp = 0;

	if (!priv->port_up)
		return;

	index = cons_index & size_mask;
	cqe = &buf[(index << factor) + factor];
	ring_index = ring->cons & size_mask;
	stamp_index = ring_index;

	/* Process all completed CQEs */
	while (FUNC0(cqe->owner_sr_opcode & MLX4_CQE_OWNER_MASK,
			cons_index & size)) {
		/*
		 * make sure we read the CQE after we read the
		 * ownership bit
		 */
		FUNC10();

		/* Skip over last polled CQE */
		new_index = FUNC1(cqe->wqe_index) & size_mask;

		do {
			txbbs_skipped += ring->last_nr_txbb;
			ring_index = (ring_index + ring->last_nr_txbb) & size_mask;
			if (ring->tx_info[ring_index].ts_requested)
				timestamp = FUNC4(cqe);

			/* free next descriptor */
			ring->last_nr_txbb = FUNC3(
					priv, ring, ring_index,
					!!((ring->cons + txbbs_skipped) &
					ring->size), timestamp);

			FUNC5(priv, ring, stamp_index,
					  !!((ring->cons + txbbs_stamp) &
						ring->size));
			stamp_index = ring_index;
			txbbs_stamp = txbbs_skipped;
		} while (ring_index != new_index);

		++cons_index;
		index = cons_index & size_mask;
		cqe = &buf[(index << factor) + factor];
	}


	/*
	 * To prevent CQ overflow we first update CQ consumer and only then
	 * the ring consumer.
	 */
	mcq->cons_index = cons_index;
	FUNC2(mcq);
	FUNC11();
	ring->cons += txbbs_skipped;

	/*
	 * Wakeup Tx queue if this stopped, and at least 1 packet
	 * was completed
	 */
	if (FUNC8(FUNC6(dev, cq->ring)) &&
	    txbbs_skipped > 0) {
		FUNC9(FUNC6(dev, cq->ring));
		priv->port_stats.wake_queue++;
	}
}