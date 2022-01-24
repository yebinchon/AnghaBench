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
struct bna {int mod_flags; int /*<<< orphan*/ * bnad; int /*<<< orphan*/  ioceth; int /*<<< orphan*/  enet; int /*<<< orphan*/  ethport; int /*<<< orphan*/  stats_mod; int /*<<< orphan*/  tx_mod; int /*<<< orphan*/  rx_mod; int /*<<< orphan*/  ucam_mod; int /*<<< orphan*/  mcam_mod; } ;

/* Variables and functions */
 int BNA_MOD_F_INIT_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct bna *bna)
{
	if (bna->mod_flags & BNA_MOD_F_INIT_DONE) {
		FUNC3(&bna->mcam_mod);
		FUNC7(&bna->ucam_mod);
		FUNC4(&bna->rx_mod);
		FUNC6(&bna->tx_mod);
		bna->mod_flags &= ~BNA_MOD_F_INIT_DONE;
	}

	FUNC5(&bna->stats_mod);
	FUNC1(&bna->ethport);
	FUNC0(&bna->enet);

	FUNC2(&bna->ioceth);

	bna->bnad = NULL;
}