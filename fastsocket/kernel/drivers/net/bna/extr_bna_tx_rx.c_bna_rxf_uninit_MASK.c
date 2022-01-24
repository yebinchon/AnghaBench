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
struct bna_rxf {int vlan_strip_pending; TYPE_2__* rx; scalar_t__ flags; scalar_t__ rss_pending; scalar_t__ rxmode_pending_bitmask; scalar_t__ rxmode_pending; int /*<<< orphan*/  mcast_pending_add_q; struct bna_mac* ucast_pending_mac; int /*<<< orphan*/  ucast_pending_add_q; scalar_t__ ucast_active_set; scalar_t__ ucast_pending_set; } ;
struct bna_mac {int /*<<< orphan*/  qe; } ;
struct TYPE_4__ {scalar_t__ rid; TYPE_1__* bna; } ;
struct TYPE_3__ {scalar_t__ promisc_rid; scalar_t__ default_mode_rid; int /*<<< orphan*/  mcam_mod; int /*<<< orphan*/  ucam_mod; } ;

/* Variables and functions */
 void* BFI_INVALID_RID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bna_mac**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bna_mac*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bna_mac*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bna_rxf *rxf)
{
	struct bna_mac *mac;

	rxf->ucast_pending_set = 0;
	rxf->ucast_active_set = 0;

	while (!FUNC4(&rxf->ucast_pending_add_q)) {
		FUNC0(&rxf->ucast_pending_add_q, &mac);
		FUNC1(&mac->qe);
		FUNC3(&rxf->rx->bna->ucam_mod, mac);
	}

	if (rxf->ucast_pending_mac) {
		FUNC1(&rxf->ucast_pending_mac->qe);
		FUNC3(&rxf->rx->bna->ucam_mod,
			rxf->ucast_pending_mac);
		rxf->ucast_pending_mac = NULL;
	}

	while (!FUNC4(&rxf->mcast_pending_add_q)) {
		FUNC0(&rxf->mcast_pending_add_q, &mac);
		FUNC1(&mac->qe);
		FUNC2(&rxf->rx->bna->mcam_mod, mac);
	}

	rxf->rxmode_pending = 0;
	rxf->rxmode_pending_bitmask = 0;
	if (rxf->rx->bna->promisc_rid == rxf->rx->rid)
		rxf->rx->bna->promisc_rid = BFI_INVALID_RID;
	if (rxf->rx->bna->default_mode_rid == rxf->rx->rid)
		rxf->rx->bna->default_mode_rid = BFI_INVALID_RID;

	rxf->rss_pending = 0;
	rxf->vlan_strip_pending = false;

	rxf->flags = 0;

	rxf->rx = NULL;
}