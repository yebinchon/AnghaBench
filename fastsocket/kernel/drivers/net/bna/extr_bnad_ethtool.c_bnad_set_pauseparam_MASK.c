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
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ rx_pause; scalar_t__ tx_pause; } ;
struct TYPE_4__ {scalar_t__ rx_pause; scalar_t__ tx_pause; } ;
struct TYPE_6__ {TYPE_1__ pause_config; } ;
struct TYPE_5__ {TYPE_3__ enet; } ;
struct bnad {int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  bna_lock; TYPE_2__ bna; } ;
struct bna_pause_config {scalar_t__ rx_pause; scalar_t__ tx_pause; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct bna_pause_config*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev,
		    struct ethtool_pauseparam *pauseparam)
{
	struct bnad *bnad = FUNC3(netdev);
	struct bna_pause_config pause_config;
	unsigned long flags;

	if (pauseparam->autoneg == AUTONEG_ENABLE)
		return -EINVAL;

	FUNC1(&bnad->conf_mutex);
	if (pauseparam->rx_pause != bnad->bna.enet.pause_config.rx_pause ||
	    pauseparam->tx_pause != bnad->bna.enet.pause_config.tx_pause) {
		pause_config.rx_pause = pauseparam->rx_pause;
		pause_config.tx_pause = pauseparam->tx_pause;
		FUNC4(&bnad->bna_lock, flags);
		FUNC0(&bnad->bna.enet, &pause_config, NULL);
		FUNC5(&bnad->bna_lock, flags);
	}
	FUNC2(&bnad->conf_mutex);
	return 0;
}