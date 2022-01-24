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
struct tx_ring_info {int dummy; } ;
struct sky2_tx_le {int dummy; } ;
struct sky2_port {int tx_ring_size; int rx_pending; void* rx_ring; void* rx_le; int /*<<< orphan*/  rx_le_map; void* tx_ring; void* tx_le; int /*<<< orphan*/  tx_le_map; struct sky2_hw* hw; } ;
struct sky2_hw {int /*<<< orphan*/  pdev; } ;
struct rx_ring_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RX_LE_BYTES ; 
 void* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct sky2_port *sky2)
{
	struct sky2_hw *hw = sky2->hw;

	/* must be power of 2 */
	sky2->tx_le = FUNC2(hw->pdev,
					   sky2->tx_ring_size *
					   sizeof(struct sky2_tx_le),
					   &sky2->tx_le_map);
	if (!sky2->tx_le)
		goto nomem;

	sky2->tx_ring = FUNC0(sky2->tx_ring_size, sizeof(struct tx_ring_info),
				GFP_KERNEL);
	if (!sky2->tx_ring)
		goto nomem;

	sky2->rx_le = FUNC2(hw->pdev, RX_LE_BYTES,
					   &sky2->rx_le_map);
	if (!sky2->rx_le)
		goto nomem;
	FUNC1(sky2->rx_le, 0, RX_LE_BYTES);

	sky2->rx_ring = FUNC0(sky2->rx_pending, sizeof(struct rx_ring_info),
				GFP_KERNEL);
	if (!sky2->rx_ring)
		goto nomem;

	return 0;
nomem:
	return -ENOMEM;
}