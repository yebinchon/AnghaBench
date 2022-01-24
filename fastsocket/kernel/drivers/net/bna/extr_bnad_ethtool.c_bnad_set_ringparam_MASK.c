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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct ethtool_ringparam {scalar_t__ rx_pending; scalar_t__ tx_pending; } ;
struct bnad {scalar_t__ rxq_depth; scalar_t__ txq_depth; int num_rx; int cfg_flags; int num_tx; int /*<<< orphan*/  conf_mutex; TYPE_2__* tx_info; int /*<<< orphan*/  bna_lock; TYPE_1__* rx_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;
struct TYPE_3__ {scalar_t__ rx; } ;

/* Variables and functions */
 int BNAD_CF_ALLMULTI ; 
 int BNAD_CF_PROMISC ; 
 scalar_t__ BNAD_MAX_RXQ_DEPTH ; 
 scalar_t__ BNAD_MAX_TXQ_DEPTH ; 
 scalar_t__ BNAD_MIN_Q_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct bnad*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnad*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct bnad*,int) ; 
 int FUNC8 (struct bnad*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC15(struct net_device *netdev,
		   struct ethtool_ringparam *ringparam)
{
	int i, current_err, err = 0;
	struct bnad *bnad = FUNC11(netdev);
	unsigned long flags;

	FUNC9(&bnad->conf_mutex);
	if (ringparam->rx_pending == bnad->rxq_depth &&
	    ringparam->tx_pending == bnad->txq_depth) {
		FUNC10(&bnad->conf_mutex);
		return 0;
	}

	if (ringparam->rx_pending < BNAD_MIN_Q_DEPTH ||
	    ringparam->rx_pending > BNAD_MAX_RXQ_DEPTH ||
	    !FUNC0(ringparam->rx_pending)) {
		FUNC10(&bnad->conf_mutex);
		return -EINVAL;
	}
	if (ringparam->tx_pending < BNAD_MIN_Q_DEPTH ||
	    ringparam->tx_pending > BNAD_MAX_TXQ_DEPTH ||
	    !FUNC0(ringparam->tx_pending)) {
		FUNC10(&bnad->conf_mutex);
		return -EINVAL;
	}

	if (ringparam->rx_pending != bnad->rxq_depth) {
		bnad->rxq_depth = ringparam->rx_pending;
		if (!FUNC12(netdev)) {
			FUNC10(&bnad->conf_mutex);
			return 0;
		}

		for (i = 0; i < bnad->num_rx; i++) {
			if (!bnad->rx_info[i].rx)
				continue;
			FUNC1(bnad, i);
			current_err = FUNC7(bnad, i);
			if (current_err && !err)
				err = current_err;
		}

		if (!err && bnad->rx_info[0].rx) {
			/* restore rx configuration */
			FUNC5(bnad, 0);
			FUNC3(bnad);
			FUNC13(&bnad->bna_lock, flags);
			FUNC4(bnad, netdev->dev_addr);
			FUNC14(&bnad->bna_lock, flags);
			bnad->cfg_flags &= ~(BNAD_CF_ALLMULTI |
					     BNAD_CF_PROMISC);
			FUNC6(netdev);
		}
	}
	if (ringparam->tx_pending != bnad->txq_depth) {
		bnad->txq_depth = ringparam->tx_pending;
		if (!FUNC12(netdev)) {
			FUNC10(&bnad->conf_mutex);
			return 0;
		}

		for (i = 0; i < bnad->num_tx; i++) {
			if (!bnad->tx_info[i].tx)
				continue;
			FUNC2(bnad, i);
			current_err = FUNC8(bnad, i);
			if (current_err && !err)
				err = current_err;
		}
	}

	FUNC10(&bnad->conf_mutex);
	return err;
}