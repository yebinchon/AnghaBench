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
struct bna_rxf {int rxmode_active; int /*<<< orphan*/  rxmode_pending_bitmask; int /*<<< orphan*/  rxmode_pending; } ;

/* Variables and functions */
 int BNA_RXMODE_ALLMULTI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct bna_rxf *rxf)
{
	int ret = 0;

	if (FUNC2(rxf->rxmode_pending,
				rxf->rxmode_pending_bitmask) ||
		(!(rxf->rxmode_active & BNA_RXMODE_ALLMULTI))) {
		/* Do nothing if pending disable or already disabled */
	} else if (FUNC3(rxf->rxmode_pending,
					rxf->rxmode_pending_bitmask)) {
		/* Turn off pending enable command */
		FUNC1(rxf->rxmode_pending,
				rxf->rxmode_pending_bitmask);
	} else if (rxf->rxmode_active & BNA_RXMODE_ALLMULTI) {
		/* Schedule disable */
		FUNC0(rxf->rxmode_pending,
				rxf->rxmode_pending_bitmask);
		ret = 1;
	}

	return ret;
}