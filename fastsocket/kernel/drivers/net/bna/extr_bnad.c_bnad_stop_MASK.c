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
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  enet_comp; } ;
struct TYPE_3__ {int /*<<< orphan*/  enet; } ;
struct bnad {int cfg_flags; int /*<<< orphan*/  conf_mutex; TYPE_2__ bnad_completions; int /*<<< orphan*/  bna_lock; TYPE_1__ bna; } ;

/* Variables and functions */
 int BNAD_CF_ALLMULTI ; 
 int BNAD_CF_PROMISC ; 
 int /*<<< orphan*/  BNA_HARD_CLEANUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnad_cb_enet_disabled ; 
 int /*<<< orphan*/  FUNC1 (struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(struct net_device *netdev)
{
	struct bnad *bnad = FUNC8(netdev);
	unsigned long flags;

	FUNC6(&bnad->conf_mutex);

	/* Stop the stats timer */
	FUNC4(bnad);

	FUNC5(&bnad->bnad_completions.enet_comp);

	FUNC9(&bnad->bna_lock, flags);
	FUNC0(&bnad->bna.enet, BNA_HARD_CLEANUP,
			bnad_cb_enet_disabled);
	FUNC10(&bnad->bna_lock, flags);

	FUNC11(&bnad->bnad_completions.enet_comp);

	FUNC2(bnad, 0);
	FUNC1(bnad, 0);

	/* These config flags are cleared in the hardware */
	bnad->cfg_flags &= ~(BNAD_CF_ALLMULTI | BNAD_CF_PROMISC);

	/* Synchronize mailbox IRQ */
	FUNC3(bnad);

	FUNC7(&bnad->conf_mutex);

	return 0;
}