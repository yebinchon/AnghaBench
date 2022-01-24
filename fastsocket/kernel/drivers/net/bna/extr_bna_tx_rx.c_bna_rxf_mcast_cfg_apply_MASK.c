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
struct bna_rxf {int /*<<< orphan*/  mcast_active_q; int /*<<< orphan*/  mcast_pending_add_q; TYPE_2__* rx; int /*<<< orphan*/  mcast_pending_del_q; } ;
struct bna_mac {int /*<<< orphan*/  qe; } ;
struct TYPE_4__ {TYPE_1__* bna; } ;
struct TYPE_3__ {int /*<<< orphan*/  mcam_mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNA_HARD_CLEANUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head**) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct bna_rxf*,struct bna_mac*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bna_mac*) ; 
 int FUNC4 (struct bna_rxf*,struct bna_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct bna_rxf *rxf)
{
	struct bna_mac *mac = NULL;
	struct list_head *qe;
	int ret;

	/* Delete multicast entries previousely added */
	while (!FUNC6(&rxf->mcast_pending_del_q)) {
		FUNC0(&rxf->mcast_pending_del_q, &qe);
		FUNC1(qe);
		mac = (struct bna_mac *)qe;
		ret = FUNC4(rxf, mac, BNA_HARD_CLEANUP);
		FUNC3(&rxf->rx->bna->mcam_mod, mac);
		if (ret)
			return ret;
	}

	/* Add multicast entries */
	if (!FUNC6(&rxf->mcast_pending_add_q)) {
		FUNC0(&rxf->mcast_pending_add_q, &qe);
		FUNC1(qe);
		mac = (struct bna_mac *)qe;
		FUNC5(&mac->qe, &rxf->mcast_active_q);
		FUNC2(rxf, mac);
		return 1;
	}

	return 0;
}