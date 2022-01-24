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
struct list_head {int dummy; } ;
struct bna_mac {int dummy; } ;
struct bna_rxf {int ucast_pending_set; struct bna_mac ucast_active_mac; scalar_t__ ucast_active_set; int /*<<< orphan*/  ucast_pending_add_q; int /*<<< orphan*/  ucast_active_q; TYPE_2__* rx; int /*<<< orphan*/  ucast_pending_del_q; } ;
typedef  enum bna_cleanup_type { ____Placeholder_bna_cleanup_type } bna_cleanup_type ;
struct TYPE_4__ {TYPE_1__* bna; } ;
struct TYPE_3__ {int /*<<< orphan*/  ucam_mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_ENET_H2I_MAC_UCAST_CLR_REQ ; 
 int /*<<< orphan*/  BFI_ENET_H2I_MAC_UCAST_DEL_REQ ; 
 int BNA_HARD_CLEANUP ; 
 int BNA_SOFT_CLEANUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head**) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct bna_rxf*,struct bna_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bna_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct bna_rxf *rxf, enum bna_cleanup_type cleanup)
{
	struct list_head *qe;
	struct bna_mac *mac;

	/* Throw away delete pending ucast entries */
	while (!FUNC5(&rxf->ucast_pending_del_q)) {
		FUNC0(&rxf->ucast_pending_del_q, &qe);
		FUNC1(qe);
		mac = (struct bna_mac *)qe;
		if (cleanup == BNA_SOFT_CLEANUP)
			FUNC3(&rxf->rx->bna->ucam_mod, mac);
		else {
			FUNC2(rxf, mac,
				BFI_ENET_H2I_MAC_UCAST_DEL_REQ);
			FUNC3(&rxf->rx->bna->ucam_mod, mac);
			return 1;
		}
	}

	/* Move active ucast entries to pending_add_q */
	while (!FUNC5(&rxf->ucast_active_q)) {
		FUNC0(&rxf->ucast_active_q, &qe);
		FUNC1(qe);
		FUNC4(qe, &rxf->ucast_pending_add_q);
		if (cleanup == BNA_HARD_CLEANUP) {
			mac = (struct bna_mac *)qe;
			FUNC2(rxf, mac,
				BFI_ENET_H2I_MAC_UCAST_DEL_REQ);
			return 1;
		}
	}

	if (rxf->ucast_active_set) {
		rxf->ucast_pending_set = 1;
		rxf->ucast_active_set = 0;
		if (cleanup == BNA_HARD_CLEANUP) {
			FUNC2(rxf, &rxf->ucast_active_mac,
				BFI_ENET_H2I_MAC_UCAST_CLR_REQ);
			return 1;
		}
	}

	return 0;
}