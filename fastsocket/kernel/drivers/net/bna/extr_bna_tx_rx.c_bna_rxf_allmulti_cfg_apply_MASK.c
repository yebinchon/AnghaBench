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
struct bna_rxf {int /*<<< orphan*/  rxmode_active; int /*<<< orphan*/  rxmode_pending_bitmask; int /*<<< orphan*/  rxmode_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNA_RXMODE_ALLMULTI ; 
 int /*<<< orphan*/  BNA_STATUS_T_DISABLED ; 
 int /*<<< orphan*/  BNA_STATUS_T_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bna_rxf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct bna_rxf *rxf)
{
	/* Enable/disable allmulti mode */
	if (FUNC3(rxf->rxmode_pending,
				rxf->rxmode_pending_bitmask)) {
		/* move allmulti configuration from pending -> active */
		FUNC0(rxf->rxmode_pending,
				rxf->rxmode_pending_bitmask);
		rxf->rxmode_active |= BNA_RXMODE_ALLMULTI;
		FUNC1(rxf, BNA_STATUS_T_DISABLED);
		return 1;
	} else if (FUNC2(rxf->rxmode_pending,
					rxf->rxmode_pending_bitmask)) {
		/* move allmulti configuration from pending -> active */
		FUNC0(rxf->rxmode_pending,
				rxf->rxmode_pending_bitmask);
		rxf->rxmode_active &= ~BNA_RXMODE_ALLMULTI;
		FUNC1(rxf, BNA_STATUS_T_ENABLED);
		return 1;
	}

	return 0;
}