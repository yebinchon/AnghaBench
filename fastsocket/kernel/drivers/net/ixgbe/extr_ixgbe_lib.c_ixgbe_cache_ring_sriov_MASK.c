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
typedef  int u16 ;
struct ixgbe_ring_feature {int offset; int mask; int indices; } ;
struct ixgbe_adapter {int flags; int num_rx_queues; int num_tx_queues; TYPE_2__** tx_ring; TYPE_1__** rx_ring; struct ixgbe_ring_feature* ring_feature; } ;
struct TYPE_4__ {int reg_idx; } ;
struct TYPE_3__ {int reg_idx; } ;

/* Variables and functions */
 int IXGBE_FLAG_VMDQ_ENABLED ; 
 size_t RING_F_FCOE ; 
 size_t RING_F_RSS ; 
 size_t RING_F_VMDQ ; 
 int FUNC0 (int,int) ; 

__attribute__((used)) static bool FUNC1(struct ixgbe_adapter *adapter)
{
#ifdef IXGBE_FCOE
	struct ixgbe_ring_feature *fcoe = &adapter->ring_feature[RING_F_FCOE];
#endif /* IXGBE_FCOE */
	struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
	struct ixgbe_ring_feature *rss = &adapter->ring_feature[RING_F_RSS];
	int i;
	u16 reg_idx;

	/* only proceed if VMDq is enabled */
	if (!(adapter->flags & IXGBE_FLAG_VMDQ_ENABLED))
		return false;

	/* start at VMDq register offset for SR-IOV enabled setups */
	reg_idx = vmdq->offset * FUNC0(1, ~vmdq->mask);
	for (i = 0; i < adapter->num_rx_queues; i++, reg_idx++) {
#ifdef IXGBE_FCOE
		/* Allow first FCoE queue to be mapped as RSS */
		if (fcoe->offset && (i > fcoe->offset))
			break;
#endif
		/* If we are greater than indices move to next pool */
		if ((reg_idx & ~vmdq->mask) >= rss->indices)
			reg_idx = FUNC0(reg_idx, ~vmdq->mask);
		adapter->rx_ring[i]->reg_idx = reg_idx;
	}

#ifdef IXGBE_FCOE
	/* FCoE uses a linear block of queues so just assigning 1:1 */
	for (; i < adapter->num_rx_queues; i++, reg_idx++)
		adapter->rx_ring[i]->reg_idx = reg_idx;

#endif
	reg_idx = vmdq->offset * FUNC0(1, ~vmdq->mask);
	for (i = 0; i < adapter->num_tx_queues; i++, reg_idx++) {
#ifdef IXGBE_FCOE
		/* Allow first FCoE queue to be mapped as RSS */
		if (fcoe->offset && (i > fcoe->offset))
			break;
#endif
		/* If we are greater than indices move to next pool */
		if ((reg_idx & rss->mask) >= rss->indices)
			reg_idx = FUNC0(reg_idx, ~vmdq->mask);
		adapter->tx_ring[i]->reg_idx = reg_idx;
	}

#ifdef IXGBE_FCOE
	/* FCoE uses a linear block of queues so just assigning 1:1 */
	for (; i < adapter->num_tx_queues; i++, reg_idx++)
		adapter->tx_ring[i]->reg_idx = reg_idx;

#endif

	return true;
}