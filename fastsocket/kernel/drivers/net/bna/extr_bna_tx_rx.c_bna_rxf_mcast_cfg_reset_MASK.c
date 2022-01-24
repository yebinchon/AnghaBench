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
struct bna_rxf {int /*<<< orphan*/  mcast_pending_add_q; int /*<<< orphan*/  mcast_active_q; TYPE_2__* rx; int /*<<< orphan*/  mcast_pending_del_q; } ;
struct bna_mac {int dummy; } ;
typedef  enum bna_cleanup_type { ____Placeholder_bna_cleanup_type } bna_cleanup_type ;
struct TYPE_4__ {TYPE_1__* bna; } ;
struct TYPE_3__ {int /*<<< orphan*/  mcam_mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head**) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bna_mac*) ; 
 int FUNC3 (struct bna_rxf*,struct bna_mac*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct bna_rxf *rxf, enum bna_cleanup_type cleanup)
{
	struct list_head *qe;
	struct bna_mac *mac;
	int ret;

	/* Throw away delete pending mcast entries */
	while (!FUNC5(&rxf->mcast_pending_del_q)) {
		FUNC0(&rxf->mcast_pending_del_q, &qe);
		FUNC1(qe);
		mac = (struct bna_mac *)qe;
		ret = FUNC3(rxf, mac, cleanup);
		FUNC2(&rxf->rx->bna->mcam_mod, mac);
		if (ret)
			return ret;
	}

	/* Move active mcast entries to pending_add_q */
	while (!FUNC5(&rxf->mcast_active_q)) {
		FUNC0(&rxf->mcast_active_q, &qe);
		FUNC1(qe);
		FUNC4(qe, &rxf->mcast_pending_add_q);
		mac = (struct bna_mac *)qe;
		if (FUNC3(rxf, mac, cleanup))
			return 1;
	}

	return 0;
}