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
struct eth_rx_sge {void* addr_lo; void* addr_hi; } ;
struct bnx2x_fastpath {scalar_t__ rx_sge_mapping; struct eth_rx_sge* rx_sge_ring; } ;

/* Variables and functions */
 int BCM_PAGE_SIZE ; 
 int NUM_RX_SGE_PAGES ; 
 int RX_SGE_CNT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bnx2x_fastpath *fp)
{
	int i;

	for (i = 1; i <= NUM_RX_SGE_PAGES; i++) {
		struct eth_rx_sge *sge;

		sge = &fp->rx_sge_ring[RX_SGE_CNT * i - 2];
		sge->addr_hi =
			FUNC2(FUNC0(fp->rx_sge_mapping +
			BCM_PAGE_SIZE*(i % NUM_RX_SGE_PAGES)));

		sge->addr_lo =
			FUNC2(FUNC1(fp->rx_sge_mapping +
			BCM_PAGE_SIZE*(i % NUM_RX_SGE_PAGES)));
	}
}