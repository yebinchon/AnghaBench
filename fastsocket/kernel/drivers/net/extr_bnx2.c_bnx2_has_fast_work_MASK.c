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
struct bnx2_tx_ring_info {scalar_t__ hw_tx_cons; } ;
struct bnx2_rx_ring_info {scalar_t__ rx_cons; } ;
struct bnx2_napi {struct bnx2_rx_ring_info rx_ring; struct bnx2_tx_ring_info tx_ring; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2_napi*) ; 
 scalar_t__ FUNC1 (struct bnx2_napi*) ; 

__attribute__((used)) static inline int
FUNC2(struct bnx2_napi *bnapi)
{
	struct bnx2_tx_ring_info *txr = &bnapi->tx_ring;
	struct bnx2_rx_ring_info *rxr = &bnapi->rx_ring;

	if ((FUNC0(bnapi) != rxr->rx_cons) ||
	    (FUNC1(bnapi) != txr->hw_tx_cons))
		return 1;
	return 0;
}