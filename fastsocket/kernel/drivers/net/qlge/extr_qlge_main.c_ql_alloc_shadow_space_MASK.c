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
struct ql_adapter {int /*<<< orphan*/  rx_ring_shadow_reg_dma; int /*<<< orphan*/ * rx_ring_shadow_reg_area; int /*<<< orphan*/  pdev; int /*<<< orphan*/ * tx_ring_shadow_reg_area; int /*<<< orphan*/  ndev; int /*<<< orphan*/  tx_ring_shadow_reg_dma; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ql_adapter *qdev)
{
	qdev->rx_ring_shadow_reg_area =
	    FUNC2(qdev->pdev,
				 PAGE_SIZE, &qdev->rx_ring_shadow_reg_dma);
	if (qdev->rx_ring_shadow_reg_area == NULL) {
		FUNC1(qdev, ifup, qdev->ndev,
			  "Allocation of RX shadow space failed.\n");
		return -ENOMEM;
	}
	FUNC0(qdev->rx_ring_shadow_reg_area, 0, PAGE_SIZE);
	qdev->tx_ring_shadow_reg_area =
	    FUNC2(qdev->pdev, PAGE_SIZE,
				 &qdev->tx_ring_shadow_reg_dma);
	if (qdev->tx_ring_shadow_reg_area == NULL) {
		FUNC1(qdev, ifup, qdev->ndev,
			  "Allocation of TX shadow space failed.\n");
		goto err_wqp_sh_area;
	}
	FUNC0(qdev->tx_ring_shadow_reg_area, 0, PAGE_SIZE);
	return 0;

err_wqp_sh_area:
	FUNC3(qdev->pdev,
			    PAGE_SIZE,
			    qdev->rx_ring_shadow_reg_area,
			    qdev->rx_ring_shadow_reg_dma);
	return -ENOMEM;
}