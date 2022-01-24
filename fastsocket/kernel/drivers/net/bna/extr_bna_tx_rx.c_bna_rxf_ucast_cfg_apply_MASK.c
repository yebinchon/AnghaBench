#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct bna_mac {int /*<<< orphan*/  qe; int /*<<< orphan*/  addr; } ;
struct bna_rxf {int ucast_active_set; int /*<<< orphan*/  ucast_active_q; int /*<<< orphan*/  ucast_pending_add_q; struct bna_mac ucast_active_mac; TYPE_3__* ucast_pending_mac; scalar_t__ ucast_pending_set; TYPE_2__* rx; int /*<<< orphan*/  ucast_pending_del_q; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {TYPE_1__* bna; } ;
struct TYPE_4__ {int /*<<< orphan*/  ucam_mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_ENET_H2I_MAC_UCAST_ADD_REQ ; 
 int /*<<< orphan*/  BFI_ENET_H2I_MAC_UCAST_DEL_REQ ; 
 int /*<<< orphan*/  BFI_ENET_H2I_MAC_UCAST_SET_REQ ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head**) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct bna_rxf*,struct bna_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bna_mac*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct bna_rxf *rxf)
{
	struct bna_mac *mac = NULL;
	struct list_head *qe;

	/* Delete MAC addresses previousely added */
	if (!FUNC5(&rxf->ucast_pending_del_q)) {
		FUNC0(&rxf->ucast_pending_del_q, &qe);
		FUNC1(qe);
		mac = (struct bna_mac *)qe;
		FUNC2(rxf, mac, BFI_ENET_H2I_MAC_UCAST_DEL_REQ);
		FUNC3(&rxf->rx->bna->ucam_mod, mac);
		return 1;
	}

	/* Set default unicast MAC */
	if (rxf->ucast_pending_set) {
		rxf->ucast_pending_set = 0;
		FUNC6(rxf->ucast_active_mac.addr,
			rxf->ucast_pending_mac->addr, ETH_ALEN);
		rxf->ucast_active_set = 1;
		FUNC2(rxf, &rxf->ucast_active_mac,
			BFI_ENET_H2I_MAC_UCAST_SET_REQ);
		return 1;
	}

	/* Add additional MAC entries */
	if (!FUNC5(&rxf->ucast_pending_add_q)) {
		FUNC0(&rxf->ucast_pending_add_q, &qe);
		FUNC1(qe);
		mac = (struct bna_mac *)qe;
		FUNC4(&mac->qe, &rxf->ucast_active_q);
		FUNC2(rxf, mac, BFI_ENET_H2I_MAC_UCAST_ADD_REQ);
		return 1;
	}

	return 0;
}