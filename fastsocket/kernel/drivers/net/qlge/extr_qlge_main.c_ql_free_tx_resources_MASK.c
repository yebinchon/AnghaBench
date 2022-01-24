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
struct tx_ring {int /*<<< orphan*/ * q; int /*<<< orphan*/ * wq_base; int /*<<< orphan*/  wq_base_dma; int /*<<< orphan*/  wq_size; } ;
struct ql_adapter {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ql_adapter *qdev,
				 struct tx_ring *tx_ring)
{
	if (tx_ring->wq_base) {
		FUNC1(qdev->pdev, tx_ring->wq_size,
				    tx_ring->wq_base, tx_ring->wq_base_dma);
		tx_ring->wq_base = NULL;
	}
	FUNC0(tx_ring->q);
	tx_ring->q = NULL;
}