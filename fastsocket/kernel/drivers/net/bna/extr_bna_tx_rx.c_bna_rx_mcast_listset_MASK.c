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
typedef  int /*<<< orphan*/  u8 ;
struct list_head {int dummy; } ;
struct bna_rxf {void (* cam_fltr_cbfn ) (struct bnad*,struct bna_rx*) ;TYPE_3__* rx; int /*<<< orphan*/  cam_fltr_cbarg; struct list_head mcast_pending_add_q; struct list_head mcast_pending_del_q; struct list_head mcast_active_q; } ;
struct bna_rx {TYPE_1__* bna; struct bna_rxf rxf; } ;
struct bna_mac {struct list_head qe; int /*<<< orphan*/  addr; } ;
typedef  enum bna_cb_status { ____Placeholder_bna_cb_status } bna_cb_status ;
struct TYPE_6__ {TYPE_2__* bna; } ;
struct TYPE_5__ {int /*<<< orphan*/  mcam_mod; } ;
struct TYPE_4__ {int /*<<< orphan*/  bnad; } ;

/* Variables and functions */
 int BNA_CB_MCAST_LIST_FULL ; 
 int BNA_CB_SUCCESS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  RXF_E_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (struct bna_rxf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,struct list_head**) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 
 struct bna_mac* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bna_mac*) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

enum bna_cb_status
FUNC9(struct bna_rx *rx, int count, u8 *mclist,
		     void (*cbfn)(struct bnad *, struct bna_rx *))
{
	struct bna_rxf *rxf = &rx->rxf;
	struct list_head list_head;
	struct list_head *qe;
	u8 *mcaddr;
	struct bna_mac *mac;
	int i;

	/* Allocate nodes */
	FUNC0(&list_head);
	for (i = 0, mcaddr = mclist; i < count; i++) {
		mac = FUNC4(&rxf->rx->bna->mcam_mod);
		if (mac == NULL)
			goto err_return;
		FUNC3(&mac->qe);
		FUNC8(mac->addr, mcaddr, ETH_ALEN);
		FUNC6(&mac->qe, &list_head);

		mcaddr += ETH_ALEN;
	}

	/* Purge the pending_add_q */
	while (!FUNC7(&rxf->mcast_pending_add_q)) {
		FUNC2(&rxf->mcast_pending_add_q, &qe);
		FUNC3(qe);
		mac = (struct bna_mac *)qe;
		FUNC5(&rxf->rx->bna->mcam_mod, mac);
	}

	/* Schedule active_q entries for deletion */
	while (!FUNC7(&rxf->mcast_active_q)) {
		FUNC2(&rxf->mcast_active_q, &qe);
		mac = (struct bna_mac *)qe;
		FUNC3(&mac->qe);
		FUNC6(&mac->qe, &rxf->mcast_pending_del_q);
	}

	/* Add the new entries */
	while (!FUNC7(&list_head)) {
		FUNC2(&list_head, &qe);
		mac = (struct bna_mac *)qe;
		FUNC3(&mac->qe);
		FUNC6(&mac->qe, &rxf->mcast_pending_add_q);
	}

	rxf->cam_fltr_cbfn = cbfn;
	rxf->cam_fltr_cbarg = rx->bna->bnad;
	FUNC1(rxf, RXF_E_CONFIG);

	return BNA_CB_SUCCESS;

err_return:
	while (!FUNC7(&list_head)) {
		FUNC2(&list_head, &qe);
		mac = (struct bna_mac *)qe;
		FUNC3(&mac->qe);
		FUNC5(&rxf->rx->bna->mcam_mod, mac);
	}

	return BNA_CB_MCAST_LIST_FULL;
}