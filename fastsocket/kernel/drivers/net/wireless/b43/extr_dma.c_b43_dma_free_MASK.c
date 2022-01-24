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
struct b43_dma {int dummy; } ;
struct b43_wldev {struct b43_dma dma; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_ring ; 
 int /*<<< orphan*/  tx_ring_AC_BE ; 
 int /*<<< orphan*/  tx_ring_AC_BK ; 
 int /*<<< orphan*/  tx_ring_AC_VI ; 
 int /*<<< orphan*/  tx_ring_AC_VO ; 
 int /*<<< orphan*/  tx_ring_mcast ; 

void FUNC2(struct b43_wldev *dev)
{
	struct b43_dma *dma;

	if (FUNC0(dev))
		return;
	dma = &dev->dma;

	FUNC1(dma, rx_ring);
	FUNC1(dma, tx_ring_AC_BK);
	FUNC1(dma, tx_ring_AC_BE);
	FUNC1(dma, tx_ring_AC_VI);
	FUNC1(dma, tx_ring_AC_VO);
	FUNC1(dma, tx_ring_mcast);
}