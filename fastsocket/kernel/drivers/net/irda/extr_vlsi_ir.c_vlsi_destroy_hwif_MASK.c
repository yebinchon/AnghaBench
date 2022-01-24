#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ busaddr; int /*<<< orphan*/ * virtaddr; int /*<<< orphan*/  pdev; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/ * rx_ring; } ;
typedef  TYPE_1__ vlsi_irda_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  HW_RING_AREA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(vlsi_irda_dev_t *idev)
{
	FUNC1(idev->rx_ring);
	FUNC1(idev->tx_ring);
	idev->rx_ring = idev->tx_ring = NULL;

	if (idev->busaddr)
		FUNC0(idev->pdev,HW_RING_AREA_SIZE,idev->virtaddr,idev->busaddr);

	idev->virtaddr = NULL;
	idev->busaddr = 0;

	return 0;
}